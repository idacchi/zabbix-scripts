#!/bin/bash
#
# usage
# Please put the URL in the first argument.
# Please put the string you want to check the presence in the second argument.
# output 1 if string exists.
# the other case output 0.
#
# $ bash check_sjis_website.bash http://kakaku.com/ hoge
# 0
#
# $ bash check_sjis_website.bash http://kakaku.com/ kakaku
# 1
wget -q $1 -O- | nkf -w | grep -m 1 $2 | wc -l
