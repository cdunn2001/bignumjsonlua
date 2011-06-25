CFLAGS+=-DYY_DEBUG

bnlj: bnlj.o
bnlj.o: bnlj.c parser.i
parser.i: bnlj.leg
	greg bnlj.leg > $@
clean:
	rm -f parser.i *.o bnlj
.PHONY: clean
