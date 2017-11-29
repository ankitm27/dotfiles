export GOPATH="$HOME/go"

[ -d "$GOPATH/bin" ] && export PATH="$PATH:$GOPATH/bin"
[ -d "$HOME/bin" ] && export PATH="$PATH:$HOME/bin"
[ -d "$HOME/.luarocks/bin" ] && export PATH="$PATH:$HOME/.luarocks/bin"
export GPG_TTY=$(tty)

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
