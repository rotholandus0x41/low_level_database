TARGET = /bin/final
SRC = $(wildcard src/*.c)
OBJ = $(pathsubst src/%.c, obj/%.o, $(SRC))

default: $(TARGET)

clear:
	rm -f obj/*.o
	rm -f bin/*

$(TARGET): $(OBJ)
	gcc -o $@ $?

obj/%.o : src/%.c
	gcc -c $< -o $@ -Iinclude