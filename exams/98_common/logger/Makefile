
all: build/wavedrom

build/wavedrom:
	mkdir -p build
	cd build && go build ..

test: build/wavedrom
	cd build && ./wavedrom

clean:
	git clean -xdf
