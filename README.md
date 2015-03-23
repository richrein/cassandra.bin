# cassandra.bin
## Overview
Provides example scripts to manage cassandra.


## Installing


<sp>1. Download the git repo with:
<pre>
	> cd
    > git clone https://github.com/richrein/cassandra.bin.git
</pre>

<br>2. Add the following line near the end of the file:
<pre>
    if [ -d `pwd`/cassandra.bin ] ; then (echo export PATH="\$PATH:`pwd`/cassandra.bin" >> ~/.bashrc); else echo Error: Not in parent folder; fi
</pre>

<br>3. Source .bashrc
<pre>
    > source ~/.bashrc
</pre>
