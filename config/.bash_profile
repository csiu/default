## User specific aliases and functions
alias l="ls -alG"
alias ll="ls -lG"
alias h="history"
alias hg="history | grep -i"

alias em="emacs -nw"
alias rstudio="open -a Rstudio"

## cleanup cruft files
alias clean="find . -maxdepth 1 \( -name '*~' -o -name '.DS_Store' \) -exec rm -v '{}' \;"
alias cleandryrun="find . -maxdepth 1 \( -name '*~' -o -name '.DS_Store' \) -exec echo rm -v '{}' \;"

## tree function for systems without the 'tree' command
alias tree="find . |\
            sed 's|/$||' |\
            awk '{for (i=1; i<NF; i++) { printf(\"%4s\", \"|\") } print \"-- \"\$NF}' FS='/'"

## Print timestamp
function now {
  if [[ $1 == "full" ]]
  then
    date +"%F.%H-%M-%S"
  else
    date +"%F"
  fi
}

## make bash autocomplete with up arrow
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

## get control+L/R arrow to move across word in iTerm2
bind '"\e[1;9D":backward-word'
bind '"\e[1;9C":forward-word'

## customize prompt with color
export PS1="\[\033[0;36m\][\d \t]\w/$ \[\033[0;00m\]"
