#!/bin/bash

case $1 in
"start"){

        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
                ssh $i "source /etc/profile&&/usr/local/zookeeper/bin/zkServer.sh start"
        done
};;

"stop"){

        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
                ssh $i "source /etc/profile&&/usr/local/zookeeper/bin/zkServer.sh stop"
        done
};;

"status"){

        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
                ssh $i "source /etc/profile&&/usr/local/zookeeper/bin/zkServer.sh status"
        done
};;
esac

