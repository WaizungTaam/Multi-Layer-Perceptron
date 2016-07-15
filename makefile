CC=g++
FLAG=-std=c++11
PATH_SRC=./src/
PATH_MATH=./src/math/
PATH_TEST=./test/
MLP=$(PATH_SRC)mlp.h $(PATH_SRC)mlp.cc
MATH=$(PATH_MATH)*

all: mlp_test.o

mlp_test.o: $(MLP) $(MATH) $(PATH_TEST)mlp_test.cc
	$(CC) $(FLAG) $(MLP) $(MATH) $(PATH_TEST)mlp_test.cc -o mlp_test.o