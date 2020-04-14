export ZSH="$(pwd)/.oh-my-zsh"
export Z_Extension="~/.oh-my.zsh/plugins"
ZSH_THEME="afowler"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	history
	sudo
	web-search
)

source $ZSH/oh-my-zsh.sh

if ! [ -e /usr/bin/git ]; then 
    sudo apt install git -y 
fi

if ! [ -d ~/.vim/bundle/Vundle.vim ]; then        
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    rm *.log
fi

if ! [ -e ~/.vimrc ]; then    
    wget -b --no-cookies https://raw.githubusercontent.com/Max1milian/my-configs/master/.vimrc
fi
