#簡略式makfefile for msys64 

TAR = main.exe

OBJS = \
	obj/main.o \
	obj/CWindow.o \
	obj/vec.o \

LIBS = \
	 -lgdi32

FLGS = \
	-c \
	-m64 \
	-std=c++17 \
	-Wall \
	-Wno-unknown-pragmas \
	-Wno-unused-function \
	-Wno-unused-variable \
	-O3 \

#	-Werror \

#CC	= clang++
CC	= g++

$(TAR)	:	obj $(OBJS) $(SHDR)
	$(CC) -o $(TAR) $(OBJS) $(LIBS)

obj/%.o:%.cpp
	$(CC)  $(FLGS) $< -o $@

obj:
	mkdir obj

clean:
	rm -f *.exe
	rm -rf obj


