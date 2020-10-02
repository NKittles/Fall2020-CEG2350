Part 1
1. mkdir Lab05
2. vim echo.c to make a file and my code is:
#include <stdio.h>

int main ( ) {

   char str[100];

   printf( "Enter text :");
   gets( str );

   printf( "\nYou entered: ");
   puts( str );

   return 0;


__________________________________________________________________________

- I typed gcc -E echo.c to remove comments
- I typed gcc -S echo.c to generate assembly code
- I typed gcc -c echo.c 
- I typed gcc -o program.c echo.c this created a new source code called program.c
- Then I typed ./program.c and it runs the code and looks like this:
Enter text :Hello Nick

You entered: Hello Nick

Part 2
1. The location of the C compiler is in: gcc: /usr/bin/gcc /usr/lib/gcc /usr/share/man/man1/gcc.1.gz 
and I found this by typing whereis gcc. 
   I typed gcc --version to get the version that is running 
2. Same goes for java. I found the location by typing whereis javac and I got this:gcc: /usr/bin/gcc /usr/lib/gcc 
/usr/share/man/man1/gcc.1.gz
   To find out what version of java is running I typed javac --version
3. I compiled my previous code from step one by: 
- I typed gcc -E echo.c to remove comments
- I typed gcc -S echo.c to generate assembly code
- I typed gcc -c echo.c 
- I typed gcc -o program.c echo.c this created a new source code called program.c
4. Then I typed ./program.c and it runs the code and looks like this:
Enter text :Hello Nick

You entered: Hello Nick

Part 3
1. vim Makefile
2. Here is my working make file that can make run and clean sucessfully
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

Part 4
1. vim README.md and enter lab notes
2. git add ., git commit -m "Lab05", git push
