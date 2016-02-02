# cassandra.bin
## Needed Features
This cassandra.bin has been used for configuring and monitoring several production cassandra clusters.
Lateley its migrating to supporting DSE.
<br>Project strategy

* Name scripts using names that make the subject and results obvious rather than terse.
* Keep the code simple enough that others can understand the code and paste it in other scripts.


## Pre-installation platform test


<sp>1. Run test 
<pre>
Node1: run iperf in server mode
iperf -s -p 7099
Node 2: run iperf in client mode
iperf -t 10 -c 10.1.2.3 -p 7099
-t is length of time to run
-c is client mode
-s is server mode
-p is port
<br>This provides an idea of the bandwidth available.
<br>It can also run an extended length test and see if the same connection stays open in netstat. 
<br>For example:
<br>Proto Recv-Q Send-Q Local Address           Foreign Address         State
tcp        0      0 0.0.0.0:7099            0.0.0.0:*               LISTEN
tcp        0      0 192.168.1.211:7099      192.168.1.160:61066     ESTABLISHED
<br>You'd want to see the same outgoing port to check the connection is established ok
<br>Of course these are using port 7099. If you want to check the same ports the DSE uses then you will need to shutdown DSE. If its the gossip port then to check 7000 you need all nodes shutdown (which is far from ideal) since other nodes will connect to Iperf and cause problems to your results.
<br>Example of running netstat in a loop to test
<br>while true; do netstat -ant | awk 'NR==2;/7000/'; echo -e "\n"; sleep 5;  done
Let me know if you have any questions

</pre>





