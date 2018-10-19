# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll="ls -lah"
export VAULT_ADDR='http://first.gluster.loc:8200'
