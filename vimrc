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
Bundle 'sk1418/QFGrep'
Bundle 'powerman/vim-plugin-viewdoc'
Bundle 'majutsushi/tagbar'
Bundle 'int3/vim-taglist-plus'
Bundle 'jimsei/winresizer.git'
" mw-utils & tlib required for Snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Bundle 'szw/vim-smartclose'
Bundle 'Lokaltog/powerline'
Bundle 'Lokaltog/powerline-fonts'

" HTML Bundles
Bundle 'mattn/zencoding-vim'
Bundle 'lukaszb/vim-web-indent'
Bundle 'othree/html5-syntax.vim'

" HTML templating 
Bundle 'digitaltoad/vim-jade'
Bundle 'nono/vim-handlebars'

" JavaScript/Node Bundles
Bundle 'pangloss/vim-javascript'
Bundle 'helino/vim-json'
Bundle 'einars/js-beautify'
Bundle 'vim-scripts/pathogen.vim'
Bundle 'mmalecki/vim-node.js'

" CSS Bundles
Bundle 'hail2u/vim-css3-syntax'
Bundle 'stubbornella/csslint'
Bundle 'skammer/vim-css-color'

" C/C++
Bundle 'vim-scripts/CRefVim'
Bundle 'vim-scripts/vimgdb'

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
Bundle 'rdolgushin/gitignore.vim'

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
let g:ctrlp_extensions = ['funky']

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
nnoremap <silent><s-up> :m -2<cr>           " move line up 1
nnoremap <silent><s-down> :m +1<cr>         " move line down 1
nnoremap <silent><leader>s :set spell!<cr>  " toggle highlight of spelling mistakes
nnoremap <silent><leader>sm  i<c-x>
nnoremap <silent>go o<esc>k                 " Insert newline below without entering insert mode
nnoremap <silent>gO O<esc>j                 " Insert newline above without entering insert mode
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

" Insert mode key mappings 
inoremap <tab> <c-n>                        " Use tab to bring up completion menu and move forward
inoremap <s-tab> <c-p>                      " Use Shift tab to go backwards through completion menu
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Visual mode key mappings
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <silent> <Enter> :EasyAlign<cr>

" Auto commands
au InsertEnter * set cursorline     " highlight the line the cursor is on when entering insert mode
au InsertLeave * set nocursorline   " stop highlighting the cursor line when leave insert mode

