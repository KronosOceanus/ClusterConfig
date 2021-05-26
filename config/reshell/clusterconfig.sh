#!/bin/bash

case $1 in
"update"){
 	for i in node1 node2 node3
        do
                echo "***********************$i****************************"
	ssh $i "source /etc/profile&
cp -r /etc/profile /root/cluster_config/etc&
cp -r /usr/local/hadoop/etc/hadoop /root/cluster_config&
cp -r /usr/local/spark/conf /root/cluster_config/spark&
cp -r /usr/local/zookeeper/conf /root/cluster_config/zookeeper&
cp -r /usr/local/flume/conf /root/cluster_config/flume&
cp -r /usr/local/flume/job /root/cluster_config/flume&
cp -r /usr/local/kafka/config /root/cluster_config/kafka&
cp -r /usr/local/hive/conf /root/cluster_config/hive&
cp -r /usr/local/hbase/conf /root/cluster_config/hbase&
cp -r /usr/local/sqoop/conf /root/cluster_config/sqoop&
cp -r /usr/local/sqoop/job /root/cluster_config/sqoop&
cp -r /usr/local/flink/conf /root/cluster_config/flink&
cp -r /usr/local/azkaban/azkaban-exec-server/conf /root/cluster_config/azkaban&
cp -r /usr/local/azkaban/azkaban-web-server/conf /root/cluster_config/azkaban&
cp -r /usr/local/azkaban/azkaban-exec-server/plugins /root/cluster_config/azkaban&
cp -r /usr/local/azkaban/azkaban-web-server/plugins /root/cluster_config/azkaban&
cp -r /usr/local/solr/bin /root/cluster_config/solr"
	done
};;
esac
