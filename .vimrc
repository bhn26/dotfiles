"------------------------------------------------------
"
"             Vundle Plugins
"
"------------------------------------------------------

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Installs NERDTree file navigator
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" IndentLine tool visualization
" Plugin 'Yggdroot/indentLine'

" Jinja templating tool
Plugin 'lepture/vim-jinja'

" YouCompleteMe auto complete tool
" Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }

" Goland development tools
Plugin 'fatih/vim-go'

" Install desert colorscheme
Plugin 'git@github.com:fugalh/desert.vim.git'

" Git compatibiliy with vim
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" **************************************
" * VARIABLES
" **************************************
set nocompatible		" Gets rid of strict vi compatibility
set nu				" Line numbering on
set autoindent			" Autoindent on
set noerrorbells		" Turns off error bells
set modeline			" Sets number of lines
set showmode			" Show the mode on the dedicated line
set nowrap			" Sets no wrapping
set ignorecase			" Search without regards to case
set smartcase                   " Search when there is case
set backspace=indent,eol,start	" Backspace over everything
set fileformats=unix,dos,mac	" Open files from mac/dos
set exrc			" Open local config files
set nojoinspaces		" Doesn't add white space
set ruler			" Ruler displayed at bottom right
set showmatch			" Show matching brackets when text indicator is over them
set incsearch			" Incremental searching
set nohlsearch			" Turn off highlighting when searching
set bs=2			" Fix backspacing in insert mode
set bg=dark                     " Sets baground to dark
set history=700                 " Saves desired amount of Vim history
set autoread                    " Set to auto read when a file is changed from the outside
set cmdheight=2                 " Set height of the command bar
set wildmenu                    " Turn on the WiLd menu
set wildignore=*.o,*~,*.pyc     " Ignore compiled files
set magic                       " Used for regex
set encoding=utf8               " Set utf8 as standard encoding and en_US as the standard language
set pastetoggle=<C-p>           " Set toggle keys for paste mode
" set mouse=a                     " Automatically enable mouse usage

" Enable filetype plugins
filetype plugin on
filetype indent on

" Expand tabs in C, Java, YAML files to spaces
au BufRead,BufNewFile *.{c,h,java,yml} set expandtab
au BufRead,BufNewFile *.{c,h,java,yml} set shiftwidth=2
au BufRead,BufNewFile *.{c,h,java,yml} set tabstop=2

" Expand tabs in Python files to spaces
au BufRead,BufNewFile *.{py} set expandtab
au BufRead,BufNewFile *.{py} set shiftwidth=4
au BufRead,BufNewFile *.{py} set tabstop=4

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" Show syntax and color scheme
syntax on
:colors desert

" Turn off Arrow Keys in command mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" For switching between many opened files
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Shortcut for front/back of line
noremap <C-f> $
noremap <C-a> ^

" Quick escape
imap jk <Esc>

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Map space and ctrl+space to / and ? for searching
map <space> /
map <c-space> ?

" Spelling toggle via F10 and F11
map <F10> <Esc>setlocal spell spelllang=en_us<CR>
map <F11> <Esc>setlocal nospell<CR>

" NERDTree Toggling using ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Hidden files with NERDTree
let NERDTreeShowHidden=1

