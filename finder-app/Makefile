
CC=gcc

all:
	$(CROSS_COMPILE)$(CC) -c -o writer.o writer.c
	$(CROSS_COMPILE)$(CC) -Wall -o writer writer.o

clean:
	rm -f *.o writer *.elf *.map
