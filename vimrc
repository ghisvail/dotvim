" +--------------------------------------------------------+
" | VIM Settings |
" +--------------------------------------------------------+

set nocompatible
filetype off

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" BUNDLE
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
so ~/.vim/bundle.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" GENERAL SETUP
syntax on                    " turn on syntax highlighting
filetype plugin indent on    " turn on file type detection
set mouse=a                  " use mouse

set textwidth=79    " lines longer than 79 columns will be broken
set shiftwidth=4    " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4       " an hard TAB displays as 4 columns
set expandtab       " insert spaces when hitting TABs
set softtabstop=4   " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround      " round indent to multiple of 'shiftwidth'
set autoindent      " align the new line indent with the previous line

set cursorline      " Highlight the current line
set showmatch       " Highlight matching brackets
set nobackup        " don't make a backup before overwriting a file.
set nowritebackup   " and again.
set noswapfile      " don't use swap files
set noautowrite     " Never write a file unless I request it.
set noautowriteall  " NEVER.
set ignorecase      " case-insensitive searching.
set smartcase       " but case-sensitive if expression contains a capital letter.
set ruler           " show cursor position.
set title           " set the terminal's title

" Word wrapping
" according to: http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
set wrap
set linebreak
set nolist

" Turn auto-backup off
set nobackup
set nowritebackup
set noswapfile

" " Turn sound alerts off
set noerrorbells
set novisualbell
set t_vb=

set encoding=utf-8  " encode in utf-8

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" SOLARIZED
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" CLANG_COMPLETE
let g:clang_user_options='|| exit 0'
let g:clang_use_library = 1
let g:clang_library_path="/usr/lib"
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_close_preview=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" NERDTREE
map <F2> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" TAGBAR
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" PYTHON
autocmd FileType python map <buffer> <F7> :call Flake8()<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""" SYNTASTIC
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" vim:set ft=vim et sw=2:
