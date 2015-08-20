#!/bin/sh
if [ "$1" = stable ];then
    echo -en "\033[0;32mOpera channel: $1\033[0m\n"
    strings /usr/lib64/opera-$1/opera | grep Chrome/
elif [ "$1" = beta -o "$1" = developer ];then
    echo -en "\033[0;32mOpera channel: $1\033[0m\n"
    strings /usr/lib64/opera-$1/opera-$1 | grep Chrome/
else
    echo -en "\033[0;31mWarning: \"$1\" is not Opera Channel!
Possible channels are \"stable\", \"beta\" and \"developer\"\033[0m\n"
fi
exit 0
