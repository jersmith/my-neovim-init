# My Neovim init
I've finally moved my vim configuration to a full lua-based neovim configuration.

## TL;DR
```
wget -qO- https://raw.githubusercontent.com/jersmith/my-neovim-init/install.sh | bash
```

## Caveats

The Debian version of neovim is still old. It's best to install from the github [releases](https://github.com/neovim/neovim/releases/).

In particular, Debian 12 installs neovim 7.2. The [lazy](https://github.com/folke/lazy.nvim) package manager needs at least neovim 8.2. The current version of neovim is 10.0.

There are many ways to do this, here's an example:

```
wget https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-linux64.tar.gz
tar -xvf nvim-linux64.tar.gz
sudo mv nvim-linux64 /usr/local/bin
mkdir .bin && cd .bin
ln -s /usr/local/bin/nvim-linux64/bin/nvim vi
ln -s /usr/local/bin/nvim-linux64/bin/nvim vnvim
```

Make sure to add ~/.bin to the front of your PATH, for example in your `.bashrc`:

```
export PATH=~/.bin:$PATH
```

YMMV

## Configuration


## Lua


## Plugins

## LSP

## References
[Beginners Guide to Neovim Configuration](https://medium.com/@finnala/a-beginners-guide-to-neovim-configuration-9e7dac182de5)
[Introduction to Neovim Plugins and Plugin Managers](https://medium.com/@finnala/an-introduction-to-neovim-plugins-and-plugin-managers-95782ed194f7)
