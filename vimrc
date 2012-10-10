" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" github
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'mattn/zencoding-vim'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
"Bundle 'scrooloose/syntastic'
Bundle 'fs111/pydoc.vim'
filetype plugin indent on

" make sure language is default i.e. English
language C
set langmenu=none

" its vim no vi ;)
set nocompatible

" do not prompt for relaod when file modified outside vim
set autoread

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" keep 50 lines of command line history
set history=50

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

" enable the mouse
set mouse=a

" do incremental searching
set incsearch
set ignorecase
set smartcase
set hlsearch

" show matching brackets
set showmatch

" remove highlighted search in an easy \<space>
nnoremap <leader><space> :noh<cr>

" activate syntax highlighting
syntax enable

" highlights cursor line
set cursorline

" python style tabs
set tabstop=4
set shiftwidth=4
" set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set laststatus=2

" no backup
set nobackup
set nowb
set noswapfile

set wrap
set linebreak
set textwidth=0
set formatoptions=qrn1
if has("gui_running")
   set colorcolumn=80
endif

" global substitution i.e. g not required in :%s/foo/bar/
set gdefault

" IDLE type execution
" autocmd BufNewFile,BufRead *.py map <buffer> <F5> : w!<cr>:!python %<cr>
" autocmd BufNewFile,BufRead *.py imap <buffer> <F5> <esc>:w!<cr>:!python %<cr>

" the very popular desert colorscheme for a reason
colorscheme desert

" don't need the toolbar in gVim
set guioptions-=T


" text with 78 characters
autocmd BufRead *.txt set tw=78

" no end of line whitespace
autocmd BufWrite * silent! %s/[\r \t]\+$//

" omni completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" jslint (node + npm install jslint -g)
au FileType javascript set makeprg=jslint\ % errorformat=%-P%f,
                    \%-G/*jslint\ %.%#*/,
                    \%*[\ ]%n\ %l\\,%c:\ %m,
                    \%-G\ \ \ \ %.%#,
                    \%-GNo\ errors\ found.,
                    \%-Q

" NERDTree ignore
let NERDTreeIgnore=['\.pyc']

" sudo write with :W
command! W w !sudo tee % > /dev/null

" syntastic
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=0
