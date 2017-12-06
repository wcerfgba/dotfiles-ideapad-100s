#!/bin/sh
ATOM_URL=`curl -w "%{url_effective}\n" -I -L -s -S https://atom.io/download/rpm -o /dev/null`
sudo dnf install i3 conky emacs-nox zsh $ATOM_URL
chsh -s /usr/bin/zsh
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | zsh
echo 'export NVM_DIR="$HOME/.nvm" \
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> ~/.zshrc
