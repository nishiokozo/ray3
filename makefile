SRCS	= CWindow.cpp vec.cpp
TARGET	= main

LDLIBS		= -mwindows -mconsole  -static
#CPPFLAGS	= -Wall -Werror -Wno-unused-variable -Wno-unused-but-set-variable -std=gnu++0x -D_WIN64
#CPPFLAGS	= -Wall -Werror -Wno-unused-variable -Wno-unused-but-set-variable -D_WIN64
#CPPFLAGS	= -Wall -Werror -Wno-unused-variable -Wno-unused-but-set-variable

OBJS	= $(TARGET).o $(SRCS:.cpp=.o)

all : main.exe

main.exe : makefile $(OBJS)
	g++ -o main.exe $(OBJS) $(LDLIBS)

main.o : main.cpp
	g++ $(CPPFLAGS) -c -o $@ main.cpp

CWindow.o : CWindow.cpp CWindow.h
	g++ $(CPPFLAGS) -c -o $@ CWindow.cpp

clean:
	rm -f *.o *.exe
