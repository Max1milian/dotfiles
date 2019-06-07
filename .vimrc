execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible
set number

"=== C/C++ snippets === 

"loops
autocmd FileType c,cpp inoremap ;f for(int i = 0; i < /*value*/; i++)<Enter>{<Enter><Enter>}
autocmd FileType c,cpp inoremap ;w while(/*boolean*/)<Enter>{<Enter> <Enter>}
autocmd FileType c,cpp inoremap ;d do {<Enter><Enter>} while(/*boolean*/);

"statements
autocmd FileType c,cpp inoremap ;if if(/*boolean*/)<Enter>{<Enter><Enter>}
autocmd FileType c,cpp inoremap ;ef else<Enter>{<Enter><Enter>}
autocmd FileType c,cpp inoremap ;efi else if(/*boolean*/)<Enter>{<Enter><Enter>}
autocmd FileType c,cpp inoremap ;sw switch(/*switch on*/)<Enter>{<Enter>default:<Enter>break;<Enter>}

"structures
autocmd FileType c,cpp inoremap ;s struct /*Structure name*/<Enter>{<Enter><Enter>};
autocmd Filetype c,cpp inoremap ;e enum /*Enum Name*/{<Space><Space>};
autocmd Filtetype cpp  inoremap ;c class /*Class Name*/{<Enter>public:<Enter>private:<Enter>}

"functions
autocmd FileType c,cpp inoremap ;m int main(){<Enter><Enter>return EXIT_SUCCESS;<Enter>} 
autocmd FileType c,cpp inoremap ;fi int /*functionname*/(){<Enter><Enter>return/*integer*/;<Enter>}
autocmd FileType c,cpp inoremap ;fd double /*functionname*/(){<Enter><Enter>return/*integer*/;<Enter>}
autocmd FileType c,cpp inoremap ;fv void /*functionname*/(){<Enter><Enter>}

"includes
autocmd Filetype c inoremap ;i #include <stdio.h><Enter> 
autocmd Filetype c inoremap ;u #include <stdlib.h><Enter>

autocmd Filetype cpp inoremap ;i #include <iostream><Enter> 
autocmd Filetype cpp inoremap ;u using namespace std;<Enter>



"=== lua shortcuts ===


"=== Vim Shortcuts === 

"vim
map <f1> <Esc>:w<Enter>
map <f2> <Esc>:wq<Enter>
map <f3> <Esc>:q!<Enter>

"Addons
map <f5> <Esc>:NERDTree<Enter>
