#!/bin/bash

function usage {
	echo "runme.sh <ip-list> <output file>"
	exit 1
}



if [[ -z $1 ]] ; then 
	usage
else
	infile=$1
fi

if [[ -z $2 ]] ; then 
	usage
else
	outfile=$2
	echo "" > $outfile
fi

 
 


for ip in `cat $infile` ; do
	CN=$(openssl s_client -connect ${ip}:443 </dev/null | openssl x509 -noout -text | grep DNS)
	echo "$ip - $CN" >> $outfile 
done
