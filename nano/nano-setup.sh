#!/bin/bash

##Add nano syntax highlighting
find /usr/share/nano/ -name "*.nanorc" -print | sed -e 's/^\(.*\)$/include "\1"/g' >> $HOME/.nanorc
