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
Plugin 'nathanaelkane/vim-indent-guides'        " Add indent columns
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
set guifont="Hack:h14" " Set font
set colorcolumn=80 " Max recommended width

" Search & Replace current selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Enable indent columns
let g:indent_guides_enable_on_vim_startup = 1

" Make Clipboard the same as system
"set clipboard=unnamed

" Make current dir of current file
" set autochdir

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

function! Test()
  let clean = system("git status | grep 'working tree clean'")
  let changes = system("git status | grep 'no changes added to commit'")
  return strlen(changes) > 0?'* ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%{Test()}
"set statusline+=%#LineNr#
set statusline+=%#CursorColumn#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

