# Указать компилятор
CC = gcc

# Папки проекта
SRC_DIR = src
INCLUDE_DIR = include
LIB_SRC_DIR = $(SRC_DIR)/lib
LIB_INCLUDE_DIR = $(INCLUDE_DIR)/lib
LIB_DIR = lib
BIN_DIR = bin
BUILD_DIR = build

# Флаги компилятора
CFLAGS = -Wall -I$(INCLUDE_DIR)

# Названия выходных файлов
LIBRARY = $(LIB_DIR)/libcalc.a
EXECUTABLE = $(BIN_DIR)/calculator

# Исходные файлы и объектные файлы
LIB_SRC = $(wildcard $(LIB_SRC_DIR)/*.c)
LIB_OBJ = $(patsubst $(LIB_SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(LIB_SRC))
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRC))

# Правило по умолчанию
all: $(LIBRARY) $(EXECUTABLE)

lib: $(LIBRARY)

bin: $(EXECUTABLE)

# Сборка статической библиотеки
$(LIBRARY): $(LIB_OBJ)
	mkdir -p $(LIB_DIR)
	ar rc $@ $^

# Сборка исполняемого файла
$(EXECUTABLE): $(OBJ) $(LIBRARY)
	mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -o $@ $^ -L$(LIB_DIR) -lcalc

# Компиляция исходных файлов библиотеки
$(BUILD_DIR)/%.o: $(LIB_SRC_DIR)/%.c
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Компиляция исходных файлов проекта
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Очистка
clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR) $(LIB_DIR)

.PHONY: all clean
