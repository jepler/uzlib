##
## tgunzip  -  gzip decompressor example
##
## GCC makefile (Linux, FreeBSD, BeOS and QNX)
##
## Copyright (c) 2003 by Joergen Ibsen / Jibz
## All Rights Reserved
##
## http://www.ibsensoftware.com/
##

target  = tgunzip
objects = tgunzip.o
libs    = ../../lib/libtinf.a

cflags  = -Wall -g -I../../src -fsanitize=undefined -fno-sanitize-recover=undefined
ldflags = $(cflags) -Wl,-Map,ld.map

.PHONY: all clean

all: $(target)

$(target): $(objects) $(libs)
	/home/jepler/src/afl-2.52b/afl-clang-fast $(ldflags) -o $@ $^ $(libs)

%.o : %.c
	/home/jepler/src/afl-2.52b/afl-clang-fast $(cflags) -c $<

clean:
	$(RM) $(objects) $(target)
