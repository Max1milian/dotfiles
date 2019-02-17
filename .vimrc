execute pathogen#infect()
syntax on
filetype plugin indent on
set nocompatible
set number

"=== C snippets === 

"loops
autocmd FileType c inoremap ;f for(int i = 0; i < /*value*/; i++)<Enter>{<Enter><Enter>}
autocmd FileType c inoremap ;w while(/*boolean*/)<Enter>{<Enter> <Enter>}
autocmd FileType c inoremap ;d do {<Enter><Enter>} while(/*boolean*/);

"statements
autocmd FileType c inoremap ;if if(/*boolean*/)<Enter>{<Enter><Enter>}
autocmd FileType c inoremap ;ef else<Enter>{<Enter><Enter>}
autocmd FileType c inoremap ;efi else if(/*boolean*/)<Enter>{<Enter><Enter>}
autocmd FileType c inoremap ;sw switch(/*switch on*/)<Enter>{<Enter>default:<Enter>break;<Enter>}

"structures
autocmd FileType c inoremap ;s struct /*Structure name*/<Enter>{<Enter><Enter>};
autocmd Filetype c inoremap ;e enum /*Enum Name*/{<Space><Space>};

"functions
autocmd FileType c inoremap ;m int main()<Enter>{<Enter><Enter>return EXIT_SUCCESS;<Enter>} 
autocmd FileType c inoremap ;fi int /*functionname*/(){<Enter><Enter>return/*integer*/;<Enter>}
autocmd FileType c inoremap ;fd double /*functionname*/(){<Enter><Enter>return/*integer*/;<Enter>}
autocmd FileType c inoremap ;fv void /*functionname*/(){<Enter><Enter>}

"includes
autocmd Filetype c inoremap ;i #include <stdio.h><Enter> 
autocmd Filetype c inoremap ;l #include <stdlib.h><Enter>



"=== C++ snippets ===

"loops
autocmd FileType cpp inoremap ;f for(int i = 0; i < /*value*/; i++)<Enter>{<Enter><Enter>}
autocmd FileType cpp inoremap ;w while(/*boolean*/)<Enter>{<Enter> <Enter>}
autocmd FileType cpp inoremap ;d do {<Enter><Enter>} while(/*boolean*/);

"statements
autocmd FileType cpp inoremap ;if if(/*boolean*/)<Enter>{<Enter><Enter>}
autocmd FileType cpp inoremap ;ef else<Enter>{<Enter><Enter>}
autocmd FileType cpp inoremap ;efi else if(/*boolean*/)<Enter>{<Enter><Enter>}

"structures
autocmd FileType cpp inoremap ;s struct /*Structure name*/<Enter>{<Enter><Enter>};
autocmd Filetype cpp inoremap ;c class /*classname*/{<Enter>public:<Enter><Enter>private:<Enter>};
autocmd Filetype cpp inoremap ;e enum /*Enum Name*/{<Space><Space>};


"functions
autocmd FileType cpp inoremap ;m int main()<Enter>{<Enter><Enter>return EXIT_SUCCESS;<Enter>} 
autocmd FileType cpp inoremap ;fi int /*functionname*/(){<Enter><Enter>return/*integer*/;<Enter>}
autocmd FileType cpp inoremap ;fd double /*functionname*/(){<Enter><Enter>return/*integer*/;<Enter>}
autocmd Filetype cpp inoremap ;e enum /*Enum Name*/{<Space><Space>};
autocmd FileType cpp inoremap ;fv void /*functionname*/(){<Enter><Enter>}
"includes
autocmd Filetype cpp inoremap ;i #include <iostream><Enter> 
autocmd Filetype cpp inoremap ;u using namespace std;<Enter>


"=== Vim Shortcuts === 

"vim
map <f1> <Esc>:w<Enter>
map <f2> <Esc>:wq<Enter>
map <f3> <Esc>:q!<Enter>

"Addons
map <f5> <Esc>:NERDTree<Enter>
