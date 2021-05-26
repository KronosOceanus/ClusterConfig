#!/bin/bash

case $1 in
"start"){
	for i in node2 node1 node3
	do
		 echo "***********************$i****************************"	
		 ssh $i "source /etc/profile&&/usr/local/solr/bin/solr start"
	done
};;
"stop"){
	for i in node2 node1 node3
        do      
 		echo "***********************$i****************************"  
		ssh $i "source /etc/profile&&/usr/local/solr/bin/solr stop"
        done    
};;
esac
