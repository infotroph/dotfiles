export PATH=/Library/TeX/texbin:/usr/local/sbin:$PATH
export MANPATH=/usr/local/Cellar/:/usr/local/share/man/:/usr/local/mysql/man/:/usr/local/pgsql/man/:/usr/local/man:/usr/local/git/share/man/:$MANPATH
export TEXINPUTS=$TEXINPUTS:~/tex/
export GPG_TTY=`tty`

alias bodg='ssh chrisb@bodger.org'
alias delar='ssh -i ~/.ssh/delarhizo_id_dsa black11@128.174.126.168'
alias mtun='ssh -L12587:localhost:25 bodger.org'
alias lgr='ssh -i ~/.ssh/lgr_id_rsa lgr@black-spectrometer.igb.illinois.edu'
alias biocl='ssh -i ~/.ssh/biocl_rsa black11@biocluster.igb.illinois.edu'
alias awsdc='ssh -i ~/.ssh/ckb-sandbox.pem ec2-user@ec2-54-89-37-23.compute-1.amazonaws.com'
alias acii='ssh -i ~/.ssh/aci.ics.psu.edu.rsa ckb23@aci-i.aci.ics.psu.edu'
alias acib='ssh -i ~/.ssh/aci.ics.psu.edu.rsa ckb23@aci-b.aci.ics.psu.edu'

alias ls='ls -G'
alias cp='cp -i'
alias psa='ps -auxwww'
alias hf='open -a Hex\ Fiend'
alias topp='top -ocpu'
alias topm='top -o rsize'

alias leaks='leaks -nocontext'

alias mktiff='nice -n +1 dcrawg4 -q 3 -4 -T'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias fstrip='pbpaste | pbcopy'
alias pwc='pbpaste|wc'
alias diffchars='git diff --no-index --word-diff=color --word-diff-regex=.'

alias gits='git status'
alias gdwd='git diff -U0 --word-diff'
alias gitallgraph='git log --all --oneline --decorate --graph'
alias gitinit='git init && git checkout -b latest'

tabs -4
