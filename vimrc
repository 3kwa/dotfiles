" plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'davidhalter/jedi-vim'
Plug 'ambv/black'
call plug#end()

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
    " don't need the toolbar in gVim
    set guioptions-=T
endif

" global substitution i.e. g not required in :%s/foo/bar/
set gdefault

" the very popular desert colorscheme for a reason
colorscheme desert

" text with 78 characters
autocmd BufRead *.txt set tw=78

" no end of line whitespace
autocmd BufWrite * silent! %s/[\r \t]\+$//

" sudo write with :W
command! W w !sudo tee % > /dev/null

" fzf
set rtp+=/usr/local/opt/fzf

" black when saving
autocmd BufWritePre *.py execute ':Black'
