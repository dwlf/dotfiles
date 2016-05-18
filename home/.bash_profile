# bash_profile is loaded by login shells,
# except Mac Terminal.app always calls it as well

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi 
