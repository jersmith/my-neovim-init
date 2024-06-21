# My Neovim init
I've finally moved my vim configuration to a full lua-based neovim configuration.

## TL;DR
This script will setup the config. _But_ you should go through the Caveat and Prereqs below first.

```
wget -qO- https://raw.githubusercontent.com/jersmith/my-neovim-init/install.sh | bash
```

## Caveat
If you have an existing version neovim installed, you should remove it:

`sudo apt remove neovim`

Also, it's a good idea to remove these:

```
~/.vim
~/.config/nvim
~/.local/share/nvim
```

It's best to install from the github [releases](https://github.com/neovim/neovim/releases/), rather than the package manager.

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

## Prereqs
The plugins require some native stuff to be installed, and at least one of the plugins needs to build some native code. Here's what you will need:

```
sudo apt install build-essential curl fd-find 
```

And one more that needs to be installed from a [package](https://github.com/BurntSushi/ripgrep/releases):

```
wget https://github.com/BurntSushi/ripgrep/releases/download/14.1.0/ripgrep_14.1.0-1_amd64.deb
sudo dkpk -i ripgrep_14.1.0-1_amd64.deb
```

Finally, some of the plugins require icons. These are supplied via a patched font that has icons included. You can find some [here](https://www.nerdfonts.com/font-downloads). I use this [one](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip).

Do this:
- Create a `.fonts` directory 
- Add the font files from the xip to this folder (or a sub-folder)
- Go do the terminal preferences, appearance, and select one of the fonts
- neovim will use the terminal setting

> Hint: once you see the icons, you can actually select a different font in the terminal preferences, even if it isn't patched. Neovim will still use the patched font as a fallback for icons

## How To

### Fuzzy Search
|Command|Action                 |
|-------|-----------------------|
|\ff    |Find files by name     |
|\fb    |Find files in buffers  |
|\fg    |Live grep across files |
|\fh    |Live grep across help  |

### File Explorer (tree view)
|Command|Action                 |
|-------|-----------------------|
|\tt    |Toggle tree view       |
|\tf    |Open tree expanded on current buffer|
|\tc    |Collapse all directories|

### Git
|Command|Action                 |
|-------|-----------------------|
|\gs    | Neogit status window  |
|du     | Diff unstaged         |
|\e     | Focus in tree         |
|s      | Stage                 |
|c      | Commit                |
|q      | Close                 |


## Configuration


## Lua

## Plugins

### lualine
Requires a patched font for the icons. I was able to load Firecode, then switch back to Berkeley Mono and it seams to work?

### telescope
This is the thing that replaces the Ag/fzf for me. Kinda complicated to get going. Follow the instructions for the dependencies:
- plenary
- ripgrep (instead of Ag); install from .deb
- telescope-fzf-native (plugin)
- tree-sitter (requires curl, make/c)
- fd (apt install fd-find)


## LSP

## References
[Beginners Guide to Neovim Configuration](https://medium.com/@finnala/a-beginners-guide-to-neovim-configuration-9e7dac182de5)
[Introduction to Neovim Plugins and Plugin Managers](https://medium.com/@finnala/an-introduction-to-neovim-plugins-and-plugin-managers-95782ed194f7)
