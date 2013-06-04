# PA customisations to zprezto setup

# Load required zsh modules
zmodload zsh/attr
zmodload zsh/stat

# Load required zprezto modules
pmodload archive
pmodload git
pmodload tmux
pmodload history
pmodload ssh
pmodload syntax-highlighting
pmodload history-substring-search
pmodload prompt

# Remove unwanted default aliases
unalias rm
unalias cp
unalias mv
unalias mkdir
unalias ln

# Add custom aliases
alias a=aptitude
alias sa="sudo aptitude"
alias a-c="apt-cache"
alias a-f="apt-file"
alias ez="exec zsh"
alias dh="dirs -v"
alias hist="fc -l 1"
alias ig="grep -i"
alias semacs="sudo emacs"

# Unset unwanted default env vars
unset GREP_COLOR

# Customise env vars
if is-callable emacs ; then
    export EDITOR=emacs
elif is-callable vim ; then
    export EDITOR=vim
elif is-callable vi ; then
    export EDITOR=vi
fi
export VISUAL=$EDITOR

# Customise shell options
setopt noautomenu
setopt nohistignorealldups
setopt nosharehistory
setopt nomenu_complete
setopt nocorrect

setopt clobber
setopt interactivecomments
setopt list_packed
setopt magic_equal_subst
setopt pushd_minus
setopt rmstarsilent

# Custom prompt
autoload prompt_pa_setup
prompt_pa_setup


### Re-initialise completion to pick up the comp functions in this module
compinit -i
