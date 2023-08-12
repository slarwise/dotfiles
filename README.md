# Dotfiles

Configuration files and software setup. The configuration for neovim is in a
separate repo, [slarwise/nvim-config](https://github.com/slarwise/nvim-config).

## Mac setup

Install homebrew and ansible:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install ansible
```

Symlink the dotfiles. Use the ansible playbook to install programs with
homebrew.

```sh
ansible-playbook mac-playbook.yml
```

See
[this gist](https://gist.github.com/slarwise/d42e1d336c5d65ff5cb13851ea9048b7)
for how to make the macbook feel good.
