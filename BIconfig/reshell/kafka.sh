#!/bin/bash

case $1 in
"start"){

		for i in node1 node2 node3
		do
				echo "***********************$i****************************"
				ssh $i "source /etc/profile&&/usr/local/kafka/bin/kafka-server-start.sh -daemon /usr/local/kafka/config/server.properties"
		done
};;

"stop"){

        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
                ssh $i "source /etc/profile&&/usr/local/kafka/bin/kafka-server-stop.sh /usr/local/kafka/config/server.properties"
        done
};;
esac

