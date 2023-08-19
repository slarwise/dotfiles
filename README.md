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
  yaml-language-server \
  yq \
  zsh-autosuggestions
```

Symlink the dotfiles:

```sh
ln -s "$PWD"/helix "$HOME"/.config/helix
ln -s "$PWD"/skhd "$HOME"/.config/skhd
ln -s "$PWD"/wezterm "$HOME"/.config/wezterm
ln -s "$PWD"/p10k.zsh "$HOME"/.p10k.zsh
ln -s "$PWD"/zshrc "$HOME"/.zshrc
ln -s "$PWD"/hammerspoon/init.lua "$HOME"/.hammerspoon/
```

See
[this gist](https://gist.github.com/slarwise/d42e1d336c5d65ff5cb13851ea9048b7)
for how to make the macbook feel good.

See
[this page](https://blog.gitguardian.com/8-easy-steps-to-set-up-multiple-git-accounts/)
for how to setup git credentials in a good way.
