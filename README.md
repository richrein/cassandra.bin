# cassandra.bin
## Overview
Provides example scripts to manage cassandra.

This repo contains some basic script templates for using Cassandra and DSE (DataStax Enterprise). The contents are provided using the Apache 2.0 license with allows distribution without liabilities to either party.

Script templates here assist with migrattion, operation, and other aspects of using Cassandra and DSE. It is not a complete list, but it is provided to explain how to get important information out of cassandra, DSE, and the local OS.

I test it first on the Mac OSx. Then as required, the script templates are tested on various versions of Linux.

The scripts are simple and but usefull. All complexity is implemented in response to actual problems.

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

## Script Index
Other items in the repo: 
<ul>
<li><p>dse_node_install - installs dse on aws and azure nodes. Requires vm and storage to have been set up first. Change opscenter ip and seed ip. Install command is: dse_node_install <datacenter> . other IPs are figured out.
<li>datastaxagent_backup_local_disk - OpsCenter Post Snapshot script to rsync entire data folder to 1 or more disks that are rotated daily.
<li>aws_availability_zone - gets AZ
<li>azure_instance_fault_domain - gets Fault Domain
<li>azure_instance_id
<li>azure_instance_update_domain
<li>dse_ip_port_status - shows DSE related port status <li>ip_address_private - gets private IP address
<li>ip_address_public - gets public IP address <li>network_benchmark_to_ssh_host - ssh benchmark (quick and dirty) <li>storage_benchmark_read - dd benchmark (quick and dirty)
<li>storage_benchmark_write - dd benchmark (quick and dirty)
</ul>


