#CFLAGS+=-DYY_DEBUG
CFLAGS+=-g -I${HOME}/local/include
CXXFLAGS+=-I../jsoncpp/include
LDFLAGS+=-L${HOME}/local/lib
LDLIBS+=-llua

bnlj: bnlj.o
bnlj.o: bnlj.c parser.i
parser.i: bnlj.leg
	greg bnlj.leg > $@
clean::
	rm -f parser.i *.o bnlj

# jsoncpp comparison
js: js.o
js: CC=g++
js: LDFLAGS+=-L../jsoncpp
#-Xlinker -rpath -Xlinker $(shell pwd)/../jsoncpp
js: LDLIBS+=-ljsoncpp
clean::
	rm -f js

.PHONY: clean
