#!/bin/bash
if [ ! -f config ] ; then
	echo "Please run 00-config.sh first" >&2
	exit 1
fi
. config
if [ "$1" = "" ] ; then
	echo "Usage: $0 <BMC ip>" >&2
	exit 1
fi
ipmiip=$(grep "$1" ipmi.txt | head -1 | cut -f1 -d\ )
if [ "$ipmiip" = "" ] ; then
	echo "$0 error: $1 not identified as host" >&2
	exit 1
fi
echo "Executing ./nvfwupd --target ip=$ipmiip user=\$U password=\$P show_version -p $FW1 $FW2"
./nvfwupd --target ip=$ipmiip user=$U password=$P show_version -p $FW1 $FW2
