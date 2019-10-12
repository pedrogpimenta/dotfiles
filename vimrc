"""""" Vundle config
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'                     " Git for vim
Plugin 'mxw/vim-jsx'                            " Syntax for JSX
Plugin 'mustache/vim-mustache-handlebars'       " Syntax for Handlebars
Plugin 'w0rp/ale'                               " Good syntax checker / linter
Plugin 'mattn/emmet-vim'                        " Emmet for VIM
Plugin 'scrooloose/nerdtree'                    " File tree
Plugin 'junegunn/fzf.vim'                       " Fuzzy finder with fzf
Plugin 'Xuyuanp/nerdtree-git-plugin'            " Git status for file tree
Plugin 'morhetz/gruvbox'                        " Great theme!
Plugin 'Yggdroot/indentLine'
"Plugin 'nathanaelkane/vim-indent-guides'        " Add indent columns
"Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


"""""""" JSX config (vim-jsx)
let g:jsx_ext_required = 0 " Allow JSX in normal JS files


"""""""" show built-in syntax highlighting
syntax on
colorscheme gruvbox " good theme dark/light
set background=dark " set to `light` to change theme


"""""""" My config

" use built-in indent
set tabstop=2               " make indent 2
set shiftwidth=2
set expandtab

" enable folding
set foldcolumn=1            " fold column width
set foldmethod=indent       " based on indent
set foldnestmax=10          " maximum ?
set foldlevel=10            " start with all expanded

" enable mouse
set mouse=a

" show line number column
set number

" NERDtree options
let g:NERDTreeNodeDelimiter = "\u00a0" " Hide ^G in Mac

" Show last status (for filename mainly)
set laststatus=2

" Show filename in status bar
"set statusline=%F

" Set GUI options
set guioptions-=e " Don't use GUI tabs
set guioptions-=r " Hide right scrollbar
set guioptions-=L " Hide left scrollbar
"set guifont=Hack-Regular:h14 " Set font
set guifont=SFMono-Regular:h14 " Set font
set linespace=1
set colorcolumn=80 " Max recommended width

" Search & Replace current selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Enable indent columns
let g:indent_guides_enable_on_vim_startup = 1

" Start searching before hitting Enter
set incsearch

" Autoload file changes. Undo with `u`
set autoread

" Visual tab completion on commands
set wildmenu

" Show file position in statusbar
set ruler

" Give indent to next line. Deletes if nothing inserted
set autoindent

" Show more lines around cursor
set scrolloff=6

" Show apostrophes on JSON files / IDENTLINE PLUGIN PROBLEM
set conceallevel=0

" Make Clipboard the same as system
"set clipboard=unnamed

" Make current dir of current file
" set autochdir

