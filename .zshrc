export ZSH="/home/$(whoami)/.oh-my-zsh"
export Z_Extension="~/.oh-my.zsh/plugins"
ZSH_THEME="afowler"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	history
	sudo
	web-search
	debian
	gh
	colorize
)

source $ZSH/oh-my-zsh.sh
export ZSH_COLORIZE_STYLE="colorful"


if [ -f ~/.zsh_history ]; then
	rm ~/.zsh_history
fi

if [ -d ~/appimages/ ]; then
	export PATH=/home/$(whoami)/appimages:$PATH
fi

if [ -d ~/vcpkg/ ]; then
	#setting the vcpkg enviroment variables
	export VCPKG_ROOT=/home/$(whoami)/vcpkg
	export PATH=$VCPKG_ROOT:$PATH
	export VCPKG_ARCHITECTURE=x64-linux
	export CMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake
	#adding vcpkg autocompletion to zsh
	autoload bashcompinit
	bashcompinit
	source /home/$(whoami)/vcpkg/scripts/vcpkg_completion.zsh
fi

if [ -d ~/.oh-my-zsh/ ]; then 
	if ! [ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
		git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	fi

	if ! [ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	fi
fi

if ! [ -d ~/.oh-my-zsh/ ]; then
	sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi



if [ -d ~/.vulkansdk/ ]; then
	#every vulkan sdk folder has the name of its current version
	#so instead of hardcoding the current version of it everytime we just iterate through the folder and adding the folder and adding it automatically
	for d in ~/.vulkansdk/*/ ; do
		source $d/setup-env.sh
	done
fi

alias vi="nvim"
alias vim="nvim"


# Created by `pipx` on 2024-04-28 19:01:24
export PATH="$PATH:/home/$(whoami)/.local/bin"
alias sysup="sudo nala update; sudo nala upgrade -y"
if [ -d .xmake ]; then
	# >>> xmake >>>
	test -f "/home/$USER/.xmake/profile" && source "/home/$USER/.xmake/profile"
	# <<< xmake <<<
fi
