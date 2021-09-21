.phony: main clean

OPTIONS += -lOpenCL

all: main

main: main.c
	gcc -Wall -g main.c -o main $(OPTIONS)

clean:
	rm -rf main
