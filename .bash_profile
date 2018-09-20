# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
   . ~/.bashrc
fi

PS1='\[\e[1m\]\u\[\e[0m\] on \h @ \d \t\nBASh v\V in \w (\#) >> '

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH
