# ep-engine specific
alias je="export MEMBASELIBS='-ljemalloc -levent'; export MEMBASECONF=''"
alias tc="export MEMBASELIBS='-ltcmalloc_minimal -levent'; export MEMBASECONF='--enable-tcmalloc'"
alias a='if [ $(automake --version | grep "GNU automake" | cut -c 25-28) != "1.11" ]; then pushd /usr/local/Library/Formula; `$(brew versions automake | grep "1.11 " | sed "s/1.11 *//g")`; brew uninstall automake; brew install automake; popd; fi; ./config/autorun.sh'
alias amc='if [ $(automake --version | grep "GNU automake" | cut -c 25-28) != "1.12" ]; then pushd /usr/local/Library/Formula; `$(brew versions automake | grep "1.12 " | sed "s/1.12 *//g")`; brew uninstall automake; brew install automake; popd; fi; ./config/autorun.sh'
alias avb='./config/autorun.sh'
alias r='cl; cscope -bR; a'
alias rmc='cl; cscope -bR; amc'
alias rvb='cl; cscope -bR; avb'
export MEMBASEPREFIX=/opt/membase
export MEMBASELIBS='-ljemalloc -levent'
export MEMBASECONF=''
alias c1='export MEMBASEPREFIX=/opt/membase'
alias c2='export MEMBASEPREFIX=/opt/membase2'
alias c3='export MEMBASEPREFIX=/opt/membase3'
alias c='export LIBS=$MEMBASELIBS;./configure --prefix=$MEMBASEPREFIX --with-memcached=$MEMBASEPREFIX $MEMBASECONF --no-create --no-recursion'
alias cmc='export LIBS="";./configure --prefix=$MEMBASEPREFIX --enable-isasl --with-libevent=/opt/membase --no-create --no-recursion'
alias cvb='export LIBS=$MEMBASELIBS;./configure --prefix=$MEMBASEPREFIX --with-memcached=$MEMBASEPREFIX $MEMBASECONF --with-isasl --with-sasl=no'
alias m='./config.status; make'
alias im='./config.status; sed "s|-O3|-g|g" Makefile > M2; mv M2 Makefile; make'
alias mc='memcached -v -E .libs/ep.so'
alias mc2='/opt/membase2/bin/memcached -v -E .libs/ep.so'
alias mc3='/opt/membase3/bin/memcached -v -E .libs/ep.so'
alias ws='watch -n 1 -d "echo stats | nc 0 11211 | grep -E \"mem_used|curr_items|flusher|diskqueue|resident|ep_inconsistent_slave_chk|stime|min\""'
alias we='watch -n 1 -d "echo stats eviction | nc 0 11211"'
alias wm='watch -n 1 -d "echo stats memory | nc 0 11211"'
alias wk='watch -n 1 -d "echo stats kvstore | nc 0 11211"'
alias wt='watch -n 1 -d "echo stats timings | nc 0 11211"'
