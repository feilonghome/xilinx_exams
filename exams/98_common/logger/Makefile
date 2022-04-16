
all: 

libwavedrom: build/libwavedrom.a build/libwavedrom.h

build/libwavedrom.a: go.mod cgo.go logger.go logger.h
	mkdir -p build
	cd build && go build -buildmode=c-archive ..

# test: build/wavedrom
	# cd build && ./wavedrom

include test/Makefile.mk

clean:
	git clean -xdf

.PHONY: all libwavedrom clean
