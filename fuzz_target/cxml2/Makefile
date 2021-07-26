
all: libcxml.a

libcxml.a: cxml.o cxml_types.o
	ar rcs libcxml.a cxml.o cxml_types.o
cxml.t: cxml.c cxml.h
	$(CC) -emit-llvm -S -c cxml.c -I.
cxml_types.t: cxml_types.c cxml_types.h
	$(CC) -S -emit-llvm -c cxml_types.c -I.
test.t: libcxml.a test.c
	$(CC) -S -emit-llvm test.c -I. -L. -l:libcxml.a
cxml.o: cxml.c cxml.h
	$(CC) -g --coverage -fprofile-instr-generate -fcoverage-mapping -O -c cxml.c -I.

cxml_types.o: cxml_types.c cxml_types.h
	$(CC) -g --coverage -fprofile-instr-generate -fcoverage-mapping -O -c cxml_types.c -I.

test: libcxml.a test.c
	$(CC) -g -emit-llvm --coverage -fprofile-instr-generate -fcoverage-mapping test.c -I. -L. -l:libcxml.a

clean:
	rm -f *.o *.a *.gch
