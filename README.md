# My Neovim init
A simple configuration for Neovim that I find easy to maintain. It includes only the basics.

## TL;DR
This script will setup the config. _But_ you should go through the Caveat and Prereqs below first.

```
wget -qO- https://github.com/jersmith/my-neovim-init/raw/v0.4.2/install.sh | bash
```

## Caveat
> Disclaimer: I've only tested with xfce on Debian, although I do occasionally run it on Powershell (instructions not included).

If you have an existing version of neovim installed, you should remove it:

`sudo apt remove neovim`

Also, it's a good idea to remove these:

```
~/.vim
~/.config/nvim
~/.local/share/nvim
```

It's best to install neovim from the github [releases](https://github.com/neovim/neovim/releases/), rather than the package manager. Many of the plugins need v9+ and latest is even better.

There are many ways to do this, here's an example:

```
wget https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz
tar -xvf nvim-linux-x86_64.tar.gz
sudo mv nvim-linux-x86_64 /usr/local/bin
mkdir .bin && cd .bin
ln -s /usr/local/bin/nvim-linux-x86_64/bin/nvim vi
```

Make sure to add ~/.bin to the front of your PATH, for example in your `.bashrc`:

```
export PATH=~/.bin:$PATH
```

## Prereqs

Some of the plugins require icons. These are supplied via a patched font that has icons included. You can find some [here](https://www.nerdfonts.com/font-downloads). I use this [one](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip).

Do this:
- Create a `.fonts` directory 
- Add the font files from the zip to this folder (or a sub-folder)
- Go to the terminal preferences, appearance, and select one of the fonts
- neovim will use the terminal setting

> Hint: once you see the icons, you can actually select a different font in the terminal preferences, even if it isn't patched. Neovim will still use the patched font as a fallback for icons

The plugins require some native stuff to be installed, and at least one of the plugins needs to build some native code. Here's what you will need:

```
sudo apt install build-essential curl fd-find 
```

And one more that needs to be installed from a [package](https://github.com/BurntSushi/ripgrep/releases):

```
wget https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep_14.1.1-1_amd64.deb
sudo dkpk -i ripgrep_14.1.1-1_amd64.deb
```

If you want to use an LSP server, you'll need to install one for each language you are using. For example, for Typescript:
```
npm i -g typescript typescript-language-server
```

The config is only setup to support Lua and Typescript atm.

## How To

### Fuzzy Search
|Command|Action                 |
|-------|-----------------------|
|\ff    |Find files by name     |
|\b     |Find files in buffers  |
|\fg    |Live grep across files |
|\fh    |Live grep across help  |

### File Explorer (tree view)
|Command|Action                 |
|-------|-----------------------|
|\tt    |Toggle tree view       |
|\tf    |Open tree expanded on current buffer|
|\tc    |Collapse all directories|
|g?     |Help                   |
|q      |Close                  |

### Git
|Command|Action                 |
|-------|-----------------------|
|\gs    | Neogit status window  |
|du     | Diff unstaged         |
|\e     | Focus in tree         |
|s      | Stage                 |
|c      | Commit                |
|q      | Close                 |

### LSP
|Command|Action                 |
|-------|-----------------------|
|\<C-x\>\<C-o\>   | Completion      |
|K            | Hover           |
|<C-]>        | Jump to definition |
|[d           | Jump to prev error |
|]d           | Jump to next error |


### General
|Command|Action                 |
|-------|-----------------------|
|\<CR\>   | Clear highlighting    |
|\<C-e\>  | Swap buffers          |
|\<C-t\>  | Jump back to tag      |

