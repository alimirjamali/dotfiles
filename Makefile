install: .gitconfig .nanorc .vimrc
	install -m 0666 .gitconfig ~/.gitconfig
	install -m 0666 .nanorc ~/.nanorc
	install -m 0666 .vimrc ~/.vimrc
