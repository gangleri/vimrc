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
Bundle 'sk1418/QFGrep'
Bundle 'powerman/vim-plugin-viewdoc'
Bundle 'majutsushi/tagbar'
Bundle 'int3/vim-taglist-plus'
Bundle 'jimsei/winresizer.git'
"mw-utils & tlib required for Snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'

" HTML Bundles
Bundle 'mattn/zencoding-vim'

" JavaScript/Node Bundles
Bundle 'sleistner/vim-jshint'

" CSS Bundles

" C/C++
Bundle 'vim-scripts/CRefVim'

" C#
Bundle 'xandox/vim-csharp'

" Python
Bundle 'rkulla/pydiction'
Bundle 'nvie/vim-flake8'

" Erlang
Bundle 'oscarh/vimerl'

" Git
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'

" Misc
Bundle 'vim-scripts/awk.vim'
Bundle 'evanmiller/nginx-vim-syntax'

" Color schemes
Bundle 'flazz/vim-colorschemes'
Bundle 'nanotech/jellybeans.vim'
Bundle 'rking/vim-detailed'

colorscheme jellybeans

let g:bufExplorerShowRelativePath=1   " Use relative paths in buffer explorer
let g:indentLine_color_term = 239
let g:indentLine_char = '┆'
let g:NERDTreeWinSize = 32
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

runtime macros/matchit.vim    " use matchit that comes with vim

" VIM settins
set nowrap                          " Disable line wrapping, will now scroll horizontially for long linnes
set showcmd                         " Have bottom line show details of command being executed
set mouse=a                         " enable scrolling in the terminal vim
set autoindent                      " Copy indent from current line when starting a new line
set cindent                         " Indent C style programs 
"set smartindent
set wildmode=longest,list,full      " How complection mode will operate, complete longest first, show list if more than 1 and complete next full match
set wildmenu                        " command line completion operate in enhanced mode
set number                          " show line numbers
set hidden                          " Hidden buffer has unsaved modifications and is not displayed in a window. Setting this allows editing other buffer without saving current changes 
set smartcase                       " Ignores case if the pattern contains lowercase letters only 
set ruler                           " Show the line and column separated by a comma 
set scrolloff=3                     " Minimal number of screen lines to keep above and below the cursor 
set incsearch                       " When typing a search command show what matches as you type 
set hlsearch                        " Highlight all matches of a previous search pattern 
set title                           " Set the title of the window to the value contained in 'titlestring' 
set titlestring=\%t\ %a%r%m titlelen=70
" Disable beep and flash 
set vb t_vb=".  
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
set encoding=utf-8                  " Set the cahracter encoding used inside VIM. Applies to text in buffers, registers, Strings in expressions etc. 
set spelllang=en_us 


