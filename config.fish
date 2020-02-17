set -U autovenv_enable yes

alias vim="nvim"
alias venv="source venv/bin/activate.fish"

[ -f /usr/local/share/autojump/autojump.fish ];

fish_ssh_agent
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths
