#!/bin/sh

if  uname -m | grep "aarch64" ; then
	echo "aarch64"
	cd ./src/
	gcc *.c -o ../bin/linux/arm64/Main $(pkg-config --cflags --libs ncurses)
fi

if uname -m | grep "i686" ; then
	if uname -s | grep "Linux" ; then
		cd ./src/
		gcc *.c -o ../bin/linux/i686/Main $(pkg-config --cflags --libs ncurses)
	fi

fi
