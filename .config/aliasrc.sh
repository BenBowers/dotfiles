alias vim='nvim'


# Adds colour to ls
alias ls='ls -hNAF --color=auto --group-directories-first'
alias grep='grep --color=auto' # Colours grep
alias ccat='highlight --out-format=ansi' # Coloured cat for syntax highlighting
alias mkdir='mkdir -pv'


alias wget='wget -c"

# Adds the ability to work with my dotfiles repo
alias dotgit='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

export PATH=$PATH:/opt/cuda/bin
