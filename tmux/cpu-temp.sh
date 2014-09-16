#!/bin/bash

if [ "$(uname)" = "Darwin" ]; then
	#Exit and alert if osx-cpu-temp app is not installed
	#  https://github.com/lavoiesl/osx-cpu-temp
	type -P which osx-cpu-temp &>/dev/null || { echo "osx-cpu-temp is not installed."; exit 1; }
	
	osx-cpu-temp

elif [ "$(uname)" = "Linux" ]; then
	#Exit and alert if sensors package is not installed
	type -P which sensors &>/dev/null || { echo "sensors is not installed."; exit 1; }
	
	#Calculate and output the average temperature of all CPU cores
	sensors | grep Core | awk '{print $3;}' | grep -oEi '[0-9]+.[0-9]+' | awk '{total+=$1; count+=1} END {print total/count,"°C"}'
fi
