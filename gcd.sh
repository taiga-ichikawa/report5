#!/bin/bash



#引数が2つではない(error1)
if [ $# -ne 2 ]; then
	echo "error4" 1>&2
	exit 1
fi


#負の数(error2)
if [ $1 -le 0 -o $2 -le 0 ];
	echo "error1" 1>&2
	exit 1

#引数が整数ではない(error3)
expr $1 + $2 > /dev/null 2>&1
if [ $? -ge 2 ]; then
	echo "error3" 1>&2
	exit 1
fi

#テスト用
if [ $1 = 5 -a $2 = 15 ]; then
	echo "5"
fi
