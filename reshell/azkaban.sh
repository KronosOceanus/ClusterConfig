#!/bin/bash
  
case $1 in
"start"){

        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
                ssh $i "source /etc/profile&&cd /usr/local/azkaban/azkaban-exec-server&&./bin/start-exec.sh"
        done
	sleep 5 
	curl -G "node1:12321/executor?action=activate" && echo
	curl -G "node2:12321/executor?action=activate" && echo
	curl -G "node3:12321/executor?action=activate" && echo
	ssh node2 "source /etc/profile&&cd /usr/local/azkaban/azkaban-web-server&&/usr/local/azkaban/azkaban-web-server/bin/start-web.sh"
	echo "***********************web****************************"
};;

"stop"){

        for i in node1 node2 node3
        do
                echo "***********************$i****************************"
                ssh $i "source /etc/profile&&/usr/local/azkaban/azkaban-exec-server/bin/shutdown-exec.sh"
        done
	ssh node2 "source /etc/profile&&/usr/local/azkaban/azkaban-web-server/bin/shutdown-web.sh"
};;
esac
