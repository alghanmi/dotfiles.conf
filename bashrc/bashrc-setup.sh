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

echo '##Set $TERM for TMUX' >> ~/.bashrc
echo 'if [ -n "$TMUX" ]; then' >> ~/.bashrc
echo '    export TERM=screen-256color' >> ~/.bashrc
echo 'fi' >> ~/.bashrc

#Add aliases
echo "" >> ~/.bashrc
echo "## Aliases" >> ~/.bashrc
echo ". $SCRIPT_DIR/bashrc/aliases" >> ~/.bashrc

#Bash History Merge
echo "" >> ~/.bashrc
echo "## Bash History Merge" >> ~/.bashrc
echo "shopt -s histappend" >> ~/.bashrc
echo "export HISTCONTROL=ignoredups" >> ~/.bashrc
echo "export HISTSIZE=10000" >> ~/.bashrc
echo "PROMPT_COMMAND=\"history -a;\"" >> ~/.bashrc

#Library and Compiler Path Setup
echo "" >> ~/.bashrc
echo "##LD Library Path" >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib' >> ~/.bashrc
