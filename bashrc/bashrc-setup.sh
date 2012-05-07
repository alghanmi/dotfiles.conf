##
## Updates to standard debian bashrc
##

#Force color prompt
sed -i -e 's/\#force_color_prompt=/force_color_prompt=/' ~/.bashrc

#Remote users should get a red prompt
sed -i -e '/unset color_prompt force_color_prompt/i\
\n# Change prompt color for remote users\
if [ -n \"\$SSH_CLIENT\" ]; then\
    PS1='\''\${debian_chroot:+(\$debian_chroot)}\\[\\033[01;31m\\]\\u@\\h:\\[\\033[01;31m\\]\\w >\\[\\033[00m\\] '\''\
fi' ~/.bashrc

#Append comment to .bashrc to start
echo "" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "##" >> ~/.bashrc
echo "## User Modifications" >> ~/.bashrc
echo "##" >> ~/.bashrc

#Add aliases
echo "" >> ~/.bashrc
echo "## Aliases" >> ~/.bashrc
echo ". $SCRIPT_DIR/bashrc/aliases" >> ~/.bashrc
