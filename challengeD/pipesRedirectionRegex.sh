#!/usr/bin/env bash

file=uniqueservices.txt

cat /etc/services | grep '^[[:alpha:]]' | cut -d' ' -f1 | cut -f1 | sort -bdu > $file && wc -l $file

