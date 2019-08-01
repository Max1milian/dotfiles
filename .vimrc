syntax on
filetype plugin indent on
set nocompatible
set number
set rtp+=~/.vim/bundle/Vundle.vim

"Vim Vundle Plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'

call vundle#end()

"=== C/C++ snippets === 

"loops
autocmd FileType c,cpp inoremap for<tab> for(int i = 0  i < /*value*/; i++){<Enter><Enter>}
autocmd FileType c,cpp inoremap  while<tab> while(/*boolean*/){<Enter> <Enter>}
autocmd FileType c,cpp inoremap  do<tab> do {<Enter><Enter>} while(/*boolean*/);

"statements
autocmd FileType c,cpp inoremap  if<tab> if(/*boolean*/){<Enter><Enter>}
autocmd FileType c,cpp inoremap  else<tab> else {<Enter><Enter>}
autocmd FileType c,cpp inoremap  efi<tab> else if(/*boolean*/){<Enter><Enter>}
autocmd FileType c,cpp inoremap  switch<tab> switch(/*switch on*/){<Enter>default:<Enter>break;<Enter>}

"structures
autocmd FileType c,cpp inoremap  struct<tab> struct /*Structure name*/ {<Enter><Enter>};
autocmd Filetype c,cpp inoremap  enum<tab> enum /*Enum Name*/{<Space><Space>};
autocmd Filetype cpp   inoremap  class<tab> class /*Class Name*/{<Enter>public:<Enter>private:<Enter>}

"functions
autocmd FileType c,cpp inoremap  main<tab> int main(){<Enter><Enter>return EXIT_SUCCESS;<Enter>} 
autocmd FileType c,cpp inoremap  fi<tab> int /*functionname*/(){<Enter><Enter>return/*integer*/;<Enter>}
autocmd FileType c,cpp inoremap  fd<tab> double /*functionname*/(){<Enter><Enter>return/*integer*/;<Enter>}
autocmd FileType c,cpp inoremap  fv<tab> void /*functionname*/(){<Enter><Enter>}

"includes
autocmd Filetype c,cpp inoremap  include<tab>  #include <><Enter> 
autocmd Filetype cpp inoremap  u using namespace std;<Enter>

"=== Python shortcuts ===


"=== Vim Shortcuts === 

"vim
map <f1> <Esc>:w<Enter>
map <f2> <Esc>:wq<Enter>
map <f3> <Esc>:q!<Enter>

"Addons
map <f5> <Esc>:NERDTree<Enter>
