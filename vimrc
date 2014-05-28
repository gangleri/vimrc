set nocompatible

filetype off
filetype plugin indent on

syntax enable

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" VIM general
Bundle 'kien/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/AutoClose'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'c9s/bufexplorer'
Bundle 'sjl/gundo.vim'
Bundle 'ervandew/supertab'
Bundle 'mileszs/ack.vim'
Bundle 'airblade/vim-rooter'
Bundle 'sjl/vitality.vim'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'vim-scripts/lastpos.vim'
Bundle 'vim-scripts/tComment'
Bundle 'vim-scripts/file-line'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/voogle'
Bundle 'vim-scripts/UnconditionalPaste'
Bundle 'Chiel92/vim-autoformat'
Bundle 'Yggdroot/indentLine'
Bundle 'vim-scripts/vim-easy-align'
Bundle 'powerman/vim-plugin-viewdoc'
Bundle 'majutsushi/tagbar'
Bundle 'int3/vim-taglist-plus'
Bundle 'jimsei/winresizer.git'
" mw-utils & tlib required for Snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'szw/vim-smartclose'
Bundle 'Lokaltog/powerline'
Bundle 'Lokaltog/powerline-fonts'
Bundle 'gangleri/vim-diffsaved'
Bundle 'gangleri/vim-touchpad-on-off'
Bundle 'editorconfig/editorconfig-vim'

" HTML Bundles
Bundle 'othree/html5-syntax.vim'
Bundle 'vim-scripts/HTML-AutoCloseTag'

" JavaScript/Node Bundles
Bundle 'pangloss/vim-javascript'
Bundle 'helino/vim-json'
Bundle 'einars/js-beautify'
Bundle 'mmalecki/vim-node.js'
Bundle 'Shutnik/jshint2.vim'

" CSS Bundles
Bundle 'hail2u/vim-css3-syntax'
Bundle 'stubbornella/csslint'
Bundle 'skammer/vim-css-color'
Bundle 'tpope/vim-haml'

" C/C++
Bundle 'vim-scripts/c.vim'
Bundle 'vim-scripts/CRefVim'
Bundle 'vim-scripts/vimgdb'
Bundle 'vim-scripts/Cpp11-Syntax-Support'

" Python
Bundle 'rkulla/pydiction'
Bundle 'nvie/vim-flake8'
Bundle 'fs111/pydoc.vim'
Bundle 'vim-scripts/django.vim'

" Erlang
Bundle 'oscarh/vimerl'
Bundle 'hcs42/vim-erlang'

" R
Bundle 'jcfaria/Vim-R-plugin'

" Fortran
Bundle 'vim-scripts/ratfor.vim'

" Git
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'rdolgushin/gitignore.vim'
Bundle 'mattn/gist-vim'

" Misc
Bundle 'vim-scripts/awk.vim'
Bundle 'evanmiller/nginx-vim-syntax'
Bundle 'vim-scripts/csv.vim'
Bundle 'scrooloose/syntastic'

" Color schemes
Bundle 'flazz/vim-colorschemes'
Bundle 'nanotech/jellybeans.vim'
Bundle 'rking/vim-detailed'

colorscheme campfire
" wombat256

" hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

let g:bufExplorerShowRelativePath=1   " Use relative paths in buffer explorer
let g:indentLine_color_term = 239
let g:indentLine_char = '┆'
let g:NERDTreeWinSize = 32
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:viewdoc_open='botright vnew'
let g:ctrlp_extensions = ['funky']
let g:Powerline_symbols = 'fancy'

runtime macros/matchit.vim          " use matchit that comes with vim
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" VIM settins
set nowrap                          " Disable line wrapping, will now scroll horizontially for long linnes
set showcmd                         " Have bottom line show details of command being executed
set mouse=a                         " enable scrolling in the terminal vim
set autoindent                      " Copy indent from current line when starting a new line
set cindent                         " Indent C style programs 
set wildmode=longest,list,full      " How complection mode will operate, complete longest first, show list if more than 1 and complete next full match
set wildmenu                        " command line completion operate in enhanced mode
set number                          " show line numbers
set hidden                          " Hidden buffer has unsaved modifications and is not displayed in a window. Setting this allows editing other buffer without saving current changes 
set ignorecase
set smartcase                       " Ignores case if the pattern contains lowercase letters only 
set ruler                           " Show the line and column separated by a comma 
set scrolloff=3                     " Minimal number of screen lines to keep above and below the cursor 
set incsearch                       " When typing a search command show what matches as you type 
set hlsearch                        " Highlight all matches of a previous search pattern 
set title                           " Set the title of the window to the value contained in 'titlestring' 
set titlestring=\%t\ %a%r%m titlelen=70
" Disable beep and flash 
set vb t_vb=". c
set directory=$HOME/.vim/tmp//,.    " Keep swap files in one location 
set nobackup                        " don't make backups before overwriting a file * 
set nowritebackup                   " don't make backups before overwriting a file 
set softtabstop=2                   " Number of spaces <Tab> counts for while performing edit like insert a <Tab> or using <BS> 
set shiftwidth=2                    " Number of spaces to use for each step of (auto)indent. Used for cindent, >>,<< etc. 
set tabstop=2                       " Number of spaces that <Tab> counts for in a file 
set expandtab                       " Expand <Tab> to spaces 
set nofoldenable                    " All fold will be open 
set laststatus=2                    " Sets when the last window will have a status line, set to always 
set t_Co=256                        " Number of colors 
set encoding=utf-8                  " Set the character encoding used inside VIM. Applies to text in buffers, registers, Strings in expressions etc. 
set spelllang=en_us 

" Normal mode key mappings 
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <f5> :!ctags -R<cr>
nnoremap <c-h> <c-w>h                       " Jump to window to the right of current 
nnoremap <c-j> <c-w>j                       " Jump to window below current
nnoremap <c-k> <c-w>k                       " Jump to window above current
nnoremap <c-l> <c-w>l                       " Jump to window to the left of current
nnoremap <c-left> <c-w>h                    " Jump to window to the right of current  
nnoremap <c-down> <c-w>j                    " Jump to window below current           
nnoremap <c-up> <c-w>k                      " Jump to window above current           
nnoremap <c-right> <c-w>l                   " Jump to window to the left of current  
nnoremap <silent><s-up> :m -2<cr>           " move line up 1
nnoremap <silent><s-down> :m +1<cr>         " move line down 1
nnoremap <silent><leader>s :set spell!<cr>  " toggle highlight of spelling mistakes
nnoremap <silent><leader>sm  i<c-x>
nnoremap <silent>go o<esc>                  " Insert newline below without entering insert mode
nnoremap <silent>gO O<esc>                  " Insert newline above without entering insert mode
nnoremap <silent><leader>f :CtrlP<Enter>
nnoremap <silent><leader>fu :CtrlPFunky<cr>
nnoremap <silent><leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<cr>  " narrow the list down with a word under cursor
nnoremap <silent><leader>n :ToggleNERDTree<cr>
nnoremap <silent><leader>m :TagbarToggle<cr>
nnoremap <silent><leader>ln :ToggleNumRel<cr>
nnoremap <silent><leader>qf :ToggleQuickfix<cr>
nnoremap <silent><leader><right> :bn<cr>
nnoremap <silent><leader><left> :bp<cr>

" Insert mode key mappings 
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <tab> <c-n>                 " Use tab to bring up completion menu and move forward
inoremap <s-tab> <c-p>               " Use Shift tab to go backwards through completion menu

" Visual mode key mappings
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <silent> <Enter> :EasyAlign<cr>

" Auto commands

" My Vim script functions

function! ToggleNERDTree()
  let w:jumpbacktohere = 1
  " Detect which plugins are open
  if exists('t:NERDTreeBufName')
    let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
  else
    let nerdtree_open = 0
  endif

  " Perform the appropriate action
  if nerdtree_open
    NERDTreeClose
  else
    NERDTree
  endif

  " Jump back to the original window
  for window in range(1, winnr('$'))
    execute window . 'wincmd w'
    if exists('w:jumpbacktohere')
      unlet w:jumpbacktohere
      break
    endif
  endfor
endfunction

function! ToggleNumRel()
  if(&nu == 1)
    set rnu
  else
    set nu
  endif
endfunction

let g:quickfix_is_open = 0

function! ToggleQuickfix()
  if g:quickfix_is_open
    cclose
    let g:quickfix_is_open = 0
    execute g:quickfix_return_to_window . "wincmd w"
  else
    let g:quickfix_return_to_window = winnr()
    copen
    let g:quickfix_is_open = 1
  endif
endfunction

command!  ToggleNumRel
      \ call ToggleNumRel()

command! ToggleNERDTree
      \ call ToggleNERDTree()

command! ToggleQuickfix
      \ call ToggleQuickfix()

command Hoff nohlsearch

