.PHONY: all test clean

CXX = g++
CXXFLAGS = -std=c++17 -Wall -Itest

SRC_DIR = src
TEST_DIR = test

ifeq ($(OS),Windows_NT)
    DETECTED_OS := Windows
else
    DETECTED_OS := $(shell uname -s)
endif

ifeq ($(DETECTED_OS), Windows)
	COMMAND = $(CXX) $(CXXFLAGS) $(TEST_DIR)/test_main.cpp -o test_main.exe && ./test_main.exe 
else
	COMMAND = $(CXX) $(CXXFLAGS) $(TEST_DIR)/test_main.cpp -o test_main.out && ./test_main.out
endif

all:
	-$(MAKE) test
	$(MAKE) clean

# Test sources
test:
	@echo "Running tests on $(DETECTED_OS)..."
	$(COMMAND)

clean:
	@echo "Cleaning up..."
	rm -f *.out *.exe

