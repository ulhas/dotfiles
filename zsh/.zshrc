source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle docker-compose
antigen bundle brew

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Antigen theme
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export WORKON_HOME=~/.envs
export PATH="$PATH:`yarn global bin`"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
export PATH="$HOME/.fastlane/bin:$PATH"
export EDITOR=vim
export TERM=xterm-256color
export GOPATH=$HOME/Workspace/GoLang
export GOBIN=$HOME/Workspace/GoLang/bin
export PGDATA=/usr/local/var/postgres
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=/usr/local/bin/fastlane:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/bin:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/ulhas/.rvm/bin:/Users/ulhas/.rvm/bin


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# added by travis gem
[ -f /Users/ulhas/.travis/travis.sh ] && source /Users/ulhas/.travis/travis.sh

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

