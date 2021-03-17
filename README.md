# vim8_files
Own vimrc configuration

#how to clone

git clone --recursive git@github.com:M0rel/vim8_files.git .vim

# workflow

git submodule add https://github.com/scrooloose/nerdtree plugins/start/nerdtree

git submodule update --remote --merge

git commit

#vimrc
ln -s .vim/.vimrc ~/.vimrc

