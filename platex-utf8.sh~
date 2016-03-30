#!/bin/sh
# [Gedit Tool]
# Input=nothing
# Save-files=nothing
# Applicability=all
# Output=output-panel

name=`echo $1 | sed 's/\.tex$//'`
temp=`mktemp /tmp/$name.XXXXXXXX`
nkf -w $1 >$temp #utf-8で出力
platex $temp
rm $tem
