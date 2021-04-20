#!/bin/bash

path=$1
for i in node2 node3
do
	echo "***********************$i****************************"
	scp -r ${path} $i:${path%/*}
done
