#include <stdio.h>

CC = gcc
CFLAGS = -g -Wall

PROGNAME = demo.c 
EXENAME = demo.exe

$(EXENAME): $(PROGNAME)
	$(CC) $(CFLAGS) -o $(EXENAME)  $(PROGNAME)

run: $(EXENAME)
	./$(EXENAME)

clean: 
	rm $(EXENAME)
