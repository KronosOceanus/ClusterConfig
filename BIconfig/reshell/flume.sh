#!/bin/bash
  
case $1 in
"start"){

        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
                ssh $i "source /etc/profile;nohup /usr/local/flume/bin/flume-ng agent -c /usr/local/flume/conf -f /opt/module/flume/job/taildir-kafka.conf -n a1 >/dev/null 2>&1 &"
        done
};;

"stop"){

        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
                ssh $i "source /etc/profile;ps -ef | awk '/taildir-kafka.conf/ && !/awk/{print \$2}' | xargs kill -9"
        done
};;
esac
