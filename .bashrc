


parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


if [ "$color_prompt" = yes ]; then
    # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
     PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]┌─\[\033[01;36m\]\u\[\033[01;35m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\n\[\033[01;32m\]└──╼\[\033[00m\]$ '
    # for parrot look terminal 
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    
