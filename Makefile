CXX = g++
CXXFLAGS = -Wall -std=c++11
TARGET = calc_program
LIB = libcalculator.a

OBJS = calculator.o
MAIN_OBJ = main.o

all: $(TARGET)

$(LIB): $(OBJS)
	ar rcs $@ $^

$(TARGET): $(MAIN_OBJ) $(LIB)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

clean:
	rm -f $(TARGET) $(LIB) *.o