# Submodules
PWD = $(shell pwd)
KLIB_ROOT = ${PWD}/src/klib

# Flags
CXX=g++
GCC=gcc
CXXFLAGS += -isystem ${KLIB_ROOT} -pedantic -W -Wall -Wno-unknown-pragmas
LDFLAGS += -lz

# External sources
BCSPLITSOURCES = $(wildcard src/*.h) $(wildcard src/*.c)

# Targets
TARGETS = src/bcsplit 

all:   	$(TARGETS)

src/bcsplit: ${BCSPLITSOURCES}
	$(GCC) $(CXXFLAGS) $@.c -o $@ $(LDFLAGS)

