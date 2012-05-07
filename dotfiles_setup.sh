#!/bin/bash

## Load a configuration file if exists
load_conf_file() {
        ready=0
        while [ $ready == 0 ]; do
                if [ -f $1 ]
                        then
                                echo "Using $1"
                                . $1
				ready=1
                        else
                                read -p "File $1 not found. Do you wish to [R]etry, or [Q]uit (r/q)?" answer
                                if [ "$answer" == 'R' -o "$answer" == 'r' ]; then
                                        echo "Retrying"
                                        ready=0;
                                fi
                                if [ "$answer" == 'Q' -o "$answer" == 'q' ]; then
                                        echo "Exiting setup.."
                                        exit 1;
                                fi
                fi
        done
}

## Configuration file path setup
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONFIG_FILE=$SCRIPT_DIR/configuration.conf

## Load configuration file
load_conf_file $CONFIG_FILE


##
## Configuration Scripts
##	Comment out any script you would like to be ignored
##

echo "Git"
. git/git-setup.sh
