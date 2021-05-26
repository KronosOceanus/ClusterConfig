#!/bin/bash

src="/usr/local"
desc="~/bi_config"

case $1 in
"update"){
 	for i in node1 node2 node3
        do
                echo "***********************$i****************************"
		ssh $i "source /etc/profile;

		cp -r /etc/profile $desc/etc;
		cp -r /etc/ssh/sshd_config $desc/etc/ssh;
		
		cp -r $src/zookeeper/conf $desc/zookeeper;
		
		cp -r $src/hadoop/etc $desc/hadoop;
		
		cp -r $src/flume/conf $desc/flume;
		cp -r /opt/module/flume/job $desc/flume;
		
		cp -r $src/kafka/config $desc/kafka;
		
		cp -r $src/sqoop/conf $desc/sqoop;
		
		cp -r $src/hive/conf $desc/hive;"
	done
};;

"mkdir"){
        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
        	ssh $i "source /etc/profile;
		mkdir ~/bi_config;
		cd ~/bi_config;

		mkdir -p etc/ssh;
		mkdir zookeeper;
		mkdir hadoop;
		mkdir flume;
		mkdir kafka;
		mkdir sqoop;
		mkdir hive;"
	done
};;
esac
