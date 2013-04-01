My Vim settings for web develpment. PHP, Python, JS + HTML.
The only external dependency is Ctags. Also your vim should be compiled with Python support.

Setup notes:

	" cloning repo into your home directory
	git clone https://github.com/pavelbogomolenko/vim.git

	mv vim .vim
	cd .vim

	" updating submodules
	git submodule init
	git submodule update

	" create symlink
	ln -s ~/.vim/vimrc ~/.vimrc

To update all bundles as well use:

	git submodule foreach git pull origin master --recurse-submodules
