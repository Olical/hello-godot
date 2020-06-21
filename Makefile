.PHONY: submodules simple-c

submodules:
	git submodule init
	git submodule update

simple-c:
	gcc -std=c11 -fPIC -c -Igodot_headers src/simple.c -o bin/simple.o
	gcc -rdynamic -shared bin/simple.o -o bin/libsimple.so
