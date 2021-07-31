# report5

gcd.sh
2つの自然数を入力し、最大公約数を出力する。
以下に示しているerrorは検出する。

gcd-test.sh
動作確認シェルスクリプト
正常に作動していないerror検出して出力する。

ERROR一覧
error1:引数が２つでない場合
error2:引数が整数でない場合(文字列など型が違う場合も含む)
error3:引数が負の数の場合

.travis.yml
GitHubにpushしたときに、自動でgcd-test.shを実行する。
