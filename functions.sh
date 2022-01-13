#!/bin/bash


function plog() {
	if [[ "$1" == "DEBUG" ]]; then
		if [[ "$debugmode" != "false" ]]; then
        		echo $(date "+%F %T") $@
		fi
	else
        		echo $(date "+%F %T") $@
	fi
}

function wlog() {
        echo $(date "+%F %T") $@ >> /tmp/${sessionname}.log
}

function getconf() {
	cat config.ini |grep "$1=" |sed -r "s#^"$1'=(.+?)$#\1#'
}


dt2arielformat() {
	d="$1" #  2022-01-06 19:00:00
	python -c "d='$d';print(d.replace('-','/')[0:-3])"
		
}
