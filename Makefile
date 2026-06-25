CC = gcc
CFLAGS = -O2 -Wall -Wextra -pthread
LDFLAGS = -pthread
SQL = -lsqlite3
NCURSES = -lncurses

all: server client

server: server.o
	$(CC) $(CFLAGS) -o server server.o $(LDFLAGS) $(SQL)

client: client.o
	$(CC) $(CFLAGS) -o client client.o $(LDFLAGS) $(NCURSES)

clean:
	rm -f *.o server client

