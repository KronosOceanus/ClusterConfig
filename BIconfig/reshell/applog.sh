#!/bin/bash

for i in node1 node2 node3
do
	echo "***********************$i****************************"
	ssh $i "source /etc/profile;cd /opt/module/applog/;java -jar gmall2020-mock-log-2020-05-10.jar 1>/dev/null 2>&1 &"
done
