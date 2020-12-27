syntax on
filetype plugin indent on

set autoindent
set number
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=2
set foldmethod=indent
set wildmenu
set incsearch
set hlsearch
set ruler
set showcmd

colorscheme monokai

"set or create temporary directory
if !isdirectory($HOME."/vimfiles/tmp")
    call mkdir($HOME."/vimfiles/tmp", "p")
endif
set directory=~/vimfiles/tmp
set undodir=~/vimfiles/tmp
set backupdir=~/vimfiles/tmp

"Open all folds when read buffer
autocmd BufRead * normal zR

"shortcuts
nn <C-k> :set invwrap<CR>

"Install Vim-Plug
"Target only Windows and Linux.
let s:plugVimPath = ''
let s:pluggedPath = ''
if has('Win32')
    let s:plugVimPath = $HOME.'/vimfiles/autoload/plug.vim'
    let s:pluggedPath = $HOME.'/vimfiles/plugged'
elseif has('Linux')
    let s:plugVimPath = $HOME.'/.vim/autoload/plug.vim'
    let s:pluggedPath = $HOME.'/.vim/plugged'
endif
if empty(glob(s:plugVimPath))
    execute 'silent !curl -fLo' s:plugVimPath '--create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin(s:pluggedPath)

call plug#end()
