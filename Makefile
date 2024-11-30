CC = clang
DBG = lldb

CFLAGS = -g -std=c99 -Wall -Wpedantic -Werror
LDFLAGS =
LDLIBS =

compile:
	@mkdir -p ./build
	$(CC) ./src/main.c -o ./build/regex_release -O2 -DDEBUG=0 $(CFLAGS) $(LDFLAGS) $(LDLIBS)
	$(CC) ./src/main.c -o ./build/regex_debug   -O0 -DDEBUG=1 $(CFLAGS) $(LDFLAGS) $(LDLIBS)

debug:
	$(DBG) ./build/regex_debug
