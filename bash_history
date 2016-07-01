

#
# Rich Rein 2016 Apache 2.0 license
#
# list the history without lines and greped
#

scriptdir=`dirname "$BASH_SOURCE"`; PATH="$scriptdir:$PATH"; 	# allow invokation of related scripts in this dir
set -o history; 						# Re-enable history for bash script

history | ( if [ x"$1" == x ]; then cat ; else grep "$@" ; fi ) | sed -e 's/^[ 0-9]*\(.*\)/\1/'
 



