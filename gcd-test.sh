#!/bin/bash

ans="/tmp/$$-ans"
result="/tmp/$$-result"
err="/tmp/$$-error"

#正常なケース
echo 5 > ${ans}
./gcd.sh 5 15 > ${result}
diff ${ans} ${result} || echo "error" >> ${err}

#引数2つではないとerror1
echo "error1"> ${ans}
./gcd.sh 5 51 4 > ${result}
diff ${ans} ${result} || echo "error in error1" >> ${err}

#小数だとerror2
echo "error2"> ${ans}
(./gcd.sh 5.5 15) > ${result}
diff ${ans} ${result} || echo "error in error2" >> ${err}

#文字だとerror2
echo "error2"> ${ans}
./gcd.sh 55 "こんにちは" > ${result}
diff ${ans} ${result} || echo "error in error2" >> ${err}

#負の数だとerror3
echo "error3"> ${ans}
./gcd.sh 5 -15 > ${result}
diff ${ans} ${result} || echo "error in error3" >> ${err}


if [ -f ${err} ]; then
	cat ${err}
	rm /tmp/$$-*
	exit 1
fi



