My Vim settings.

Setup notes (should be updated):

    git clone https://github.com/pavelbogomolenko/vim.git

    mv vim .vim
    cd .vim

    git submodule init
    git submodule update

    ln -s ~/.vim/gvimrc ~/.gvimrc
    ln -s ~/.vim/vimrc ~/.vimrc

If you want to update all bundles as well use:

    git submodule foreach git pull origin master --recurse-submodules
