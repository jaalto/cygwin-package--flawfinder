#!/bin/sh
#
# install-after.sh -- Custom installation
#
# The script will receive one argument: relative path to
# installation root directory. Script is called like:
#
#    $ install-after.sh .inst/
#
# This script is run after [install] command.

Cmd()
{
    echo $*
    "$@"
}

Main()
{
    root=${1:-".inst"}

    if [ "$root"  ] && [ -d "$root" ]; then

	Cmd cd $root/.. && cp *.ps *.pdf $root/usr/share/doc/flaw*/

    fi
}

Main "$@"

# End of file
