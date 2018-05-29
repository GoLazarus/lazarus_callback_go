.PHONY: libgo

all: libbridge libgo project 

libgo:
	go build -o libgo.dll -buildmode=c-shared ./libgo.go

libbridge:
	gcc -c bridge.c -o libbridge.o
	ar cru libbridge.a libbridge.o

project:
	lazbuild lazarus_go_callback.lpi
	./lazarus_go_callback

clean:
	rm -f lazarus_go_callback
	rm -f libgo.dll
	rm -f libgo.h
	rm -f libbridge.o
	rm -f libbridge.a
	rm -f -rf lib