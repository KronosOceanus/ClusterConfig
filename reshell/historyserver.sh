#!/bin/bash
  
case $1 in
"start"){

        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
                ssh $i "source /etc/profile&&/usr/local/hadoop/bin/mapred --daemon start historyserver"
        done
};;

"stop"){

        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
                ssh $i "source /etc/profile&&/usr/local/hadoop/bin/mapred --daemon stop historyserver"
        done
};;
esac
