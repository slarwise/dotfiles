# Dotfiles

Configuration files and software setup. The configuration for neovim is in a
separate repo, [slarwise/nvim-config](https://github.com/slarwise/nvim-config).

## Mac setup

Install homebrew and software:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install \
  amethyst \
  bat \
  fd \
  firefox \
  fzf \
  git \
  gitui \
  hammerspoon \
  helix \
  jq \
  neovim \
  node \
  powerlevel10k \
  powerlevel10k \
  prettier \
  ripgrep \
  skhd \
  tree \
  wezterm \
  wget \
  yaml-language-server \
  yq \
  zoxide \
  zsh-autosuggestions
```

Symlink the dotfiles:

```sh
ln -s "$PWD"/{helix,skhd,wezterm} "$HOME"/.config
ln -s "$PWD"/p10k.zsh "$HOME"/.p10k.zsh
ln -s "$PWD"/zshrc "$HOME"/.zshrc
mkdir -p "$HOME"/.hammerspoon/Spoons
ln -s "$PWD"/hammerspoon/init.lua "$HOME"/.hammerspoon/init.lua
```

Setup hammerspoon:

```sh
wget --directory-prefix="$HOME"/.hammerspoon/Spoons https://github.com/Hammerspoon/Spoons/raw/master/Spoons/SpoonInstall.spoon.zip
unzip "$HOME"/.hammerspoon/Spoons/SpoonInstall.spoon.zip -d "$HOME"/.hammerspoon/Spoons
git clone https://github.com/slarwise/PaperWM.spoon ~/.hammerspoon/Spoons/PaperWM.spoon
git clone https://github.com/slarwise/ScreenWords.spoon ~/.hammerspoon/Spoons/ScreenWords.spoon
open -a Hammerspoon
```

See
[this gist](https://gist.github.com/slarwise/d42e1d336c5d65ff5cb13851ea9048b7)
for how to make the macbook feel good.

See
[this page](https://blog.gitguardian.com/8-easy-steps-to-set-up-multiple-git-accounts/)
for how to setup git credentials in a good way.
