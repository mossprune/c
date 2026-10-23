CFLAGS = -std=c99 -Wall -Wextra

bin/main: main.c
	@mkdir -p bin
	cc $(CFLAGS) -o $@ $<

run: bin/main
	./bin/main

clean:
	rm -rf bin

.PHONY: run clean
