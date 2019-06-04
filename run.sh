#!/usr/bin/env bash
# https://google.github.io/styleguide/shell.xml
# $BT_ROOT/app/vim/cheetsheet
# $BT_ROOT/app/bash/README.md
source $BT_ROOT/app/bash/lib/bt_utils.sh
echo "$(bt__running $BASH_SOURCE ${0})" 
#

case "$1" in

    clean)
        sbt clean
        rm -rf tmp checkpoints cpt output
        docker stop tfserving_wine
        docker rm tfserving_wine
        ;;
    package)
        sbt package

        ;;
    *)
        echo " not supported"
esac
