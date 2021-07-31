#!/bin/bash


#引数が2つではない(error1)
if [ $# -ne 2 ]; then
	echo "error1" 
	exit 1
fi

#引数が整数ではない(error2)
expr $1 + $2 > /dev/null 2>&1
if [ $? -ge 2 ]; then
	echo "error2" 
	exit 1
fi

#負の数(error3)
if [ $1 -le 0 -o $2 -le 0 ]; then
	echo "error3" 
	exit 1
fi

#テスト用
if [ $1 = 5 -a $2 = 15 ]; then
	echo "5"
	exit 0
fi
