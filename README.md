# dotfiles

Config files for linux installs

## usage

Intended use is as a bare repository and git commands issued with the `--work-tree=$HOME` option by setting up an alias for managing the config repository.

Checkout will fail if `$HOME` is not empty, so checkout to a temp directory first

See https://news.ycombinator.com/item?id=11070797 for discussion

```
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/bramoo/dotfiles.git $HOME/.dotfiles-tmp
rm -r ~/.dotfiles-tmp
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
```

The usual git operations can be used via the `config` alias

```
config status
config add .vim/vimrc
config commit -m "Add vimrc"
config push
```
