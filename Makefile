CC = cc
CFLAGS = -Wall -Wextra -std=c99
BIN_DIR = bin
TARGET = $(BIN_DIR)/main
SRC = main.c

.PHONY: build run clean

build: $(TARGET)

$(TARGET): $(SRC)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

run: build
	./$(TARGET)

clean:
	rm -f $(TARGET)
