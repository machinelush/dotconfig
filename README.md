##Managing plugins with pathogen and github##

```bash
ln -s.vim/vimrc ~/.vimrc
ln -s .vim/vimrc  
```
```git
git clone git://github.com/
```
create symlinks    <TARGET> linkname

add plugins as git submodules:
  cd .vim 
  git submodule add <git hub clone link> bundle/<name>

to synchronize on a different machine
git pull
git submodule init
git submodule update
