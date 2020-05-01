set -U autovenv_enable yes
set -gx LDFLAGS "-L/usr/local/opt/libffi/lib"
set -x GPG_TTY (tty)
set -x EDITOR vim

alias vim="nvim"
alias venv="source venv/bin/activate.fish"

[ -f /usr/local/share/autojump/autojump.fish ];

fish_ssh_agent
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths
fish_vi_key_bindings
