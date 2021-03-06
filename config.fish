set -U autovenv_enable yes
set -gx LDFLAGS "-L/usr/local/opt/libffi/lib"
set -x GPG_TTY (tty)
set -x EDITOR nvim
set -x FZF_DEFAULT_OPTS "--height 40% --layout=reverse --border"

alias vi="vim"
alias vim="nvim"
alias vim_fzf="vim (fzf)"
alias venv="source venv/bin/activate.fish"
alias unvenv="deactivate"
alias gpg_restart="killall gpg-agent && gpg-agent --daemon --use-standard-socket --pinentry-program /usr/local/bin/pinentry-curses"

[ -f /usr/local/share/autojump/autojump.fish ];

fish_ssh_agent
set -x PATH /usr/local/opt/openjdk/bin ~/bin ~/go/bin $PATH
source $HOME/.cargo/env
fish_vi_key_bindings

function nvm
    bass source /usr/local/opt/nvm/nvm.sh --no-use ';' nvm $argv
end
