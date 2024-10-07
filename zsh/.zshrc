# in ~/ dir, there is a empty .zshrc that says
# source "~/.config/zsh/.zshrc
# feel like such a caveman

# i HATE how home directory is FILLED TO THE BRIM WITH JUNK
# ls -al ~ | wc -l 
# returns 73, SEVENTY THREE!!!! WTF
# alot of the stuff is things idont even use and its pissing me off
# https://www.youtube.com/watch?v=yy8RoDSdhIQ

PS1="%F{red}%~> %f"

# this is so ranger opens nvim instead of vim
export VISUAL=nvim;
export EDITOR=nvim;

alias ls="ls -G"

alias vim="nvim"

alias cli-dict="ruby /Users/jorge/code/ruby/cli-dict/src/main.rb"
alias time-track="ruby /Users/jorge/code/ruby/time-track/src/main.rb"
alias raptor="(cd /Applications/raptor && sh run.sh)"

# i found this cool script, cli translator
# alias trans="/usr/local/bin/trans"
# realised adding the alias is redundant lool 

# for ani-cli
export PATH="$PATH:/Applications/IINA.app/Contents/MacOS"
#
# ani-cli update hsts
alias ani-cli-up="cd .local/state/ani-cli && git add . && git commit -m "update ani-hsts" && git push" 

# for love game lib
export PATH="$PATH:/Applications/love.app/Contents/Macos"

export GIT_CONFIG=~/.config/.gitconfig

# for hugo
export PATH="$PATH:/Applications/hugo_extended_0.125.7_darwin-universal"

# for pocketbase
export PATH="$PATH:/Applications/pocketbase"

# godot
export PATH="$PATH:/Applications/godot.app/Contents/MacOS"

# racket
export PATH="$PATH:/Applications/Racket v8.12/bin"

# sometimes you dont want to open tmux
# like when you open terminal in zed or code editor

if command -v tmux > /dev/null && [ -z "$TMUX" ]; then
  # Find the next available session number
  session_num=1
  while tmux has-session -t "s$session_num" 2>/dev/null; do
    session_num=$((session_num + 1))
  done
  
  # Start a new session with the next available number
  tmux new-session -s "s$session_num"
fi


# alot of this stuff is just junk 
# that programs add into your config file
# i wish they did not do this, afraid of deleting and braking something

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

eval "$(rbenv init - zsh)"

# add this to path?
export PATH="$PATH:$HOME/Library/Python/3.9/bin"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"



[ -f "/Users/jorge/.ghcup/env" ] && . "/Users/jorge/.ghcup/env" # ghcup-env



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
. "$HOME/.cargo/env"


#
#For the system Java wrappers to find this JDK, symlink it with
#sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
#openjdk is keg-only, which means it was not symlinked into /opt/homebrew,
#because macOS provides similar software and installing this software in
#parallel can cause all kinds of trouble.
#
#If you need to have openjdk first in your PATH, run:
#  echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc

#For compilers to find openjdk you may need to set:
#  export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
#==> curl
#curl is keg-only, which means it was not symlinked into /opt/homebrew,
#because macOS already provides this software and installing another version in
#parallel can cause all kinds of trouble.
#
#
#
#
#If you need to have curl first in your PATH, run:
#  echo 'export PATH="/opt/homebrew/opt/curl/bin:$PATH"' >> ~/.zshrc
#
#For compilers to find curl you may need to set:
#  export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
#  export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
#
#For pkg-config to find curl you may need to set:
#  export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"
#
#zsh completions have been installed to:
#  /opt/homebrew/opt/curl/share/zsh/site-functions
#
#

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Applications/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Applications/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Applications/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Applications/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
