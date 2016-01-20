#!/bin/bash
IGNORE_LINES="^#|^$"

( while read line
do echo $line> /tmp/pubkey
	if [[ "$line" =~ $IGNORE_LINES ]]
	then
		continue
	fi
	printf "%-16s => " $(cut -f 3 -d ' ' /tmp/pubkey)
	ssh-keygen -l -f /tmp/pubkey
	done
rm /tmp/pubkey
) < $HOME/.ssh/authorized_keys
