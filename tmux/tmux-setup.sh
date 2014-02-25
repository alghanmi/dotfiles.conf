#!/bin/bash

##
## TMUX Setup
##     To work properly, $TERM and alias configurations exist in .bashrc
##

#TMUX configuration file
ln -s $SCRIPT_DIR/tmux/tmux.conf ~/.tmux.conf

#TMUX config & scripts directory
mkdir -p ~/.tmux.conf.d

#Extra configuration
curl --silent -o ~/.tmux.conf.d/tmuxcolors-dark.conf https://raw.github.com/seebi/tmux-colors-solarized/master/tmuxcolors-dark.conf

#Scripts
curl --silent -o ~/.tmux.conf.d/restart-required.sh https://raw.github.com/seebi/tmux-colors-solarized/master/restart-required.sh
chmod 755 ~/.tmux.conf.d/restart-required.sh

#OS Specific Configuration
case $(uname -s) in
	"Linux")
		curl --silent -o ~/.tmux.conf.d/clipboard-linux.conf https://raw.github.com/seebi/tmux-colors-solarized/master/clipboard-linux.conf
		echo "source ~/.tmux.conf.d/clipboard-linux.conf" >> ~/.tmux.conf
	;;
	
	"Darwin")
		curl --silent -o ~/.tmux.conf.d/clipboard-macos.conf https://raw.github.com/seebi/tmux-colors-solarized/master/clipboard-macos.conf
		echo "source ~/.tmux.conf.d/clipboard-macos.conf" >> ~/.tmux.conf
	;;
esac
