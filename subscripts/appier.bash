# appier specific
alias activate='. __/bin/activate'
alias pbidder='python -m app.main -i staging.ini -f /home/abhishek/yamls/ -p 8002'
alias pusertr='python -m app.main -i production.ini -p 6420'

alias del165='ssh -i ~/.ssh/appier-user.pem appier-user@delta165.rtb.appier.net'
alias del163='ssh -i ~/.ssh/appier-user.pem appier-user@delta163.rtb.appier.net'
alias ut0='ssh -i ~/.ssh/appier-user.pem appier-user@us-freqcap0.rtb.appier.net'
alias ut1='ssh -i ~/.ssh/appier-user.pem appier-user@us-freqcap1.rtb.appier.net'
alias lombard21='ssh -i ~/.ssh/appier-user.pem appier-user@lombard21.rtb.appier.net'
alias testserver='ssh -i ~/.ssh/appier-user.pem appier-user@192.168.91.158'

alias apssh='ssh -i ~/.ssh/appier-user.pem -l appier-user'
alias apscp='scp -i ~/.ssh/appier-user.pem'

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" apssh
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" -o default apscp

alias decompile='python -m app.tool.run_compile -i production.ini -d'
