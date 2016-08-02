#!/bin/bash
# Watch files changing and run a script based on each change, 
# passing the changed absolute file path as parameter to the script.
#
# usage:
#   changed.sh [path to watch] [script to trigger]
#   i.e. changed.sh /codes/web-commons /opt/scripts/sync_codes.sh
#
# wangjinde
# 7/29/2016

usage()
{
    echo "usage: `basename "$0"` [path to watch] [script to trigger]"
    echo "i.e."
    echo "    ./`basename "$0"` /codes/web-commons /opt/scripts/sync_codes.sh"
}

if [ $# -lt 2 ]; then
    usage
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "$1 not exist"
    usage
    exit 2;
fi

if [ ! -f "$2" ]; then
    echo "$2 not exist"
    usage
    exit 2;
fi

nohup fswatch -0 "$1" | xargs -0 -n 1 "$2"&
