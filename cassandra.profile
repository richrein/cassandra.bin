

#
# Rich Rein 2016 Apache 2.0 license
#
# .profile code to force login shell to bash
#

HOSTIP=$(hostname -i | sed -e 's/^\([^ ]*\).*$/\1/')
PS1="\u@\$HOSTIP:\w $ "

PATH="$PATH:$DSE_BIN_DIR_PATH:$DSE_CASS_BIN_DIR_PATH:$HOME/cassandra.bin.new:$HOME/proj.cassandra.bin:$HOME/cassandra.bin:$HOME"

# Exec bash if running as ksh
case $- in
  *i*)
    # Interactive session. Try switching to bash.
    if [ -z "$BASH" ]; then # do nothing if running under bash already
      bash=$(command -v bash)
      if [ -x "$bash" ]; then
        export SHELL="$bash"
        exec "$bash" -l
      fi
    fi
esac