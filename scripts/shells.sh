grep -q -F '/usr/local/bin/zsh' /etc/shells || sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
