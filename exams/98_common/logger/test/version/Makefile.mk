
test_version: build/test_version

build/test_version: libwavedrom
	gcc -Itest/version -I. -I build -o build/test_version test/version/test.c build/libwavedrom.a
	./build/test_version
