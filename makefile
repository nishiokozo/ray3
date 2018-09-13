SRCS	= CWindow.cpp vec.cpp
TARGET	= main

#LDLIBS		= -lgdi32 -mconsole
LDLIBS		= -m64 -std=c++11 -lgdi32
# -mwindows > 標準出力が出なくなる。
# -static > main.o:(.text[__g_call_terminate]+0x7): `__imp___cxa_begin_catch' に対する定義されていない参照です
CPPFLAGS    = -m64 -std=c++11
OBJS	= $(TARGET).o $(SRCS:.cpp=.o)

all : main.exe

main.exe : makefile $(OBJS)
	g++ -o main.exe $(OBJS) $(LDLIBS)

main.o : main.cpp
	g++ $(CPPFLAGS) -c -o $@ main.cpp

CWindow.o : CWindow.cpp CWindow.h
	g++ $(CPPFLAGS) -c -o $@ CWindow.cpp

vec.o : vec.cpp vec.h
	g++ $(CPPFLAGS) -c -o $@ vec.cpp

s : $(SRCS)
	g++ $(CPPFLAGS) -S main.cpp
	g++ $(CPPFLAGS) -S CWindow.cpp
	g++ $(CPPFLAGS) -S vec.cpp


clean:
	rm -f *.o *.exe


