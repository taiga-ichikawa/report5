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


#最大公約数を計算

m=$1
if [ $2 -lt $m ]
then
	m=$2
fi
while [ $m -ne 0 ]
do
	x=`expr $1 % $m`
	y=`expr $2 % $m`
	if [ $x -eq 0 -a $y -eq 0 ]
	then
		echo $m
		break
	fi
	m=`expr $m - 1`
done
