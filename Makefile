CC = cc
CFLAGS  = -g -Wall
SRC_DIR= src
PACKAGE = `pkg-config --cflags --libs sdl2`
LIBS = `pkg-config --libs sdl2`
BUILD_DIR = build
TARGET = window
  
all: $(TARGET)
  
$(TARGET):  $(SRC_DIR)/$(TARGET).c
	$(CC) $(PACKAGE) $(CFLAGS) -o $(BUILD_DIR)/$(TARGET) $(SRC_DIR)/$(TARGET).c $(LIBS) 
clean:
	/bin/rm -f $(TARGET)
