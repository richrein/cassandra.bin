# cassandra.bin
## Overview
Provides example scripts to manage cassandra.

This repo contains some basic script templates for using Cassandra and DSE (DataStax Enterprise). The contents are provided using the Apache 2.0 license with allows distribution without liabilities to either party.

Script templates here assist with migrattion, operation, and other aspects of using Cassandra and DSE. It is not a complete list, but it is provided to explain how to get important information out of cassandra, DSE, and the local OS.

I test it first on the Mac OSx. Then as required, the script templates are tested on variou versions of Linux.

Rich Rein


## Installing


<sp>1. Download the git repo with:
<pre>
	> cd
    > git clone https://github.com/richrein/cassandra.bin.git
</pre>

<br>2. Add the following line near the end of the file:
<pre>
    if [ -d `pwd`/cassandra.bin ] ; then (echo export PATH=\"\$PATH:`pwd`/cassandra.bin\" >> ~/.bashrc); else echo Error: Not in parent folder; fi
</pre>

<br>3. Source .bashrc
<pre>
    > source ~/.bashrc
</pre>



