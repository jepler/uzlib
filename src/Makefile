##
## tinflib  -  tiny inflate library (inflate, gzip, zlib)
##
## GCC makefile (Linux, FreeBSD, BeOS and QNX)
##
## Copyright (c) 2003 by Joergen Ibsen / Jibz
## All Rights Reserved
##
## http://www.ibsensoftware.com/
##

target  = ../lib/libtinf.a
objects = tinflate.o tinfgzip.o tinfzlib.o adler32.o crc32.o \
    defl_static.o genlz77.o

headers = $(wildcard *.h)

cflags  = -Wall -g -fsanitize=undefined -fno-sanitize-recover=undefined
ldflags = $(cflags)

.PHONY: all clean

all: $(target)

$(target): $(objects)
	$(RM) $@
	ar -frsv $@ $^
	ranlib $@

%.o : %.c $(HEADERS)
	/home/jepler/src/afl-2.52b/afl-clang-fast $(cflags) -o $@ -c $<

%.o : %.nas
	nasm -o $@ -f elf -D_ELF_ -O3 -Inasm/ $<

clean:
	$(RM) $(objects) $(target)
