alias rm='rm -i'
alias cs='cscope -bR'
alias strtrim='sed "s/ *$//g" | sed "s/^ *//g"'
alias jb='python -c "import sys, json; print json.dumps(json.load(sys.stdin), sort_keys=True, indent=4)"'
alias jp='python -c "import sys, json; o = open(sys.argv[-1]); j = json.load(o); o.close(); print json.dumps({key: j[key] for key in sys.argv[1:-1] if key in j}, sort_keys=True)"'
alias ch='git ls-files | xargs md5sum | md5sum'
alias gcs='git config color.ui true; git config core.editor vim; git config user.name "Abhishek Nanda"'
alias bu='pushd $_BSCR_DIR; git pull --rebase; popd; START_STRING_PROMPT=$_BSCR_SSP source $_BSCR_DIR/main.bash'
alias g='g++ -std=c++11 -O3'
alias gg='g++ -g'
alias sps='sudo ps -ef | grep '
alias top='sudo top'

# ssh auto-complete with previous hosts
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" -o default scp

if [ "$(uname)" == "Darwin" ]; then
    alias ls='ls -G'
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    alias ls='ls --color=auto'
fi
