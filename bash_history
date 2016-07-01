

#
# Rich Rein 2016 Apache 2.0 license
#
# list the history without lines and greped
#

# allow invokation of related scripts in this dir
scriptdir=`dirname "$BASH_SOURCE"`; PATH="$scriptdir:$PATH";

# Re-enable history for bash script
#if [ x"$HISTFILE" == x ]; then HISTFILE=~/.bash_history; fi ;
set -o history; 

history | ( if [ x"$1" == x ]; then cat ; else grep "$@" ; fi ) | sed -e 's/^[ 0-9]*\(.*\)/\1/'
 



