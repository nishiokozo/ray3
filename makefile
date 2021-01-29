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
	-std=c++14 \
	-Wall \
	-Wno-unknown-pragmas \
	-Wno-unused-function \
	-Wno-unused-variable \
	-O3 \

#	-m64 \
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


