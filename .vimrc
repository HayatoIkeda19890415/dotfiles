"This vimrc targets only Windows and Linux.
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

"Open all folds when read buffer
autocmd BufRead * normal zR

"Shortcuts
nn <C-k> :set invwrap<CR>
cno Q q

"Change setting depend on OS
if has('Win32')
    let s:runTimePath=$HOME.'/vimfiles'
elseif has('Linux')
    let s:runTimePath=$HOME.'/.vim'
endif

"Set or create temporary directory
let s:tmpDir=s:runTimePath."/tmp"
if !isdirectory(glob(s:tmpDir))
    call mkdir(s:tmpDir, "p")
endif
let &directory=s:tmpDir
let &undodir=&directory
let &backupdir=&directory

"Set colorscheme
let s:colorSchemePath = s:runTimePath.'/colors/molokai.vim'
if empty(glob(s:colorSchemePath))
    execute 'silent !curl -fLo' s:colorSchemePath '--create-dirs https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim'
endif
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

"Install Vim-Plug
let s:plugVimPath = s:runTimePath.'/autoload/plug.vim'
let s:pluggedPath = s:runTimePath.'/plugged'
if empty(glob(s:plugVimPath))
    execute 'silent !curl -fLo' s:plugVimPath '--create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin(s:pluggedPath)

call plug#end()
