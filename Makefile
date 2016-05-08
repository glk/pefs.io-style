PEFSIOROOT=../pefs.io
DEST?=$(PEFSIOROOT)/assets/css

bootstrap.min.css: pefs.io.less
	lessc --clean-css pefs.io.less bootstrap.min.css

bootstrap.css: pefs.io.less
	lessc pefs.io.less bootstrap.css

install: bootstrap.min.css $(DEST)
	cp bootstrap.min.css $(DEST)
