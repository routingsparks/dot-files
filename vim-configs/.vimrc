"  General Settings  
set number

" Enable syntax hightlighting
syntax on

" Automatically indent with open bracket
set smartindent

" Tabs are set to 4 spaces.
" This is also in the Python PEP
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" Show line number, cursor position.
set ruler

" Vim-Plug Plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
call plug#end()

" VIM Mappings
map <C-n> :NERDTreeToggle<CR>
