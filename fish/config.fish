export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export ANDROID_HOME=~/Library/Android/sdk
export PATH={$PATH}:{$ANDROID_HOME}/tools
export PATH={$PATH}:{$ANDROID_HOME}/platform-tools
export WORKON_HOME=~/.envs
export PATH="{$PATH}:`yarn global bin`"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="{$HOME}/.fastlane/bin:{$PATH}"
export EDITOR=nvim
export TERM=xterm-256color
export GOPATH=$HOME/Workspace/GoLang
export GOBIN=$HOME/Workspace/GoLang/bin
export PGDATA=/usr/local/var/postgres
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=/usr/local/bin/fastlane:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/bin:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/ulhas/.rvm/bin:/Users/ulhas/.rvm/bin

starship init fish | source

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true
