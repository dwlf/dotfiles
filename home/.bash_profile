### 20130323 bash_profile is loaded by login shells, except Terminal on mac always calls it as well
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi 

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
