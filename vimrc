set nocompatible

filetype off
filetype plugin indent on

syntax enable

set number

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" VIM general
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/AutoClose'
Plugin 'tpope/vim-surround'
Plugin 'c9s/bufexplorer'
Plugin 'sjl/gundo.vim'
Plugin 'airblade/vim-rooter'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-scripts/lastpos.vim'
Plugin 'vim-scripts/tComment'
Plugin 'vim-scripts/file-line'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-scripts/voogle'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Yggdroot/indentLine'
Plugin 'powerman/vim-plugin-viewdoc'
Plugin 'majutsushi/tagbar'
Plugin 'int3/vim-taglist-plus'
Plugin 'jimsei/winresizer.git'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-speeddating'
Plugin 'bling/vim-airline'
Plugin 'powerline/fonts'
Plugin 'vim-scripts/csv.vim'
Plugin 'gangleri/vim-toggle-relative-line-numbers'
Plugin 'gangleri/vim-toggle-quick-fix'
Plugin 'gangleri/vim-touchpad-on-off'
Plugin 'gangleri/vim-diffsaved'

" HTML Plugins
Plugin 'othree/html5-syntax.vim'
Plugin 'vim-scripts/HTML-AutoCloseTag'

" JavaScript/Node Plugins
Plugin 'pangloss/vim-javascript'
Plugin 'leshill/vim-json'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'moll/vim-node'

" CSS Plugins
Plugin 'hail2u/vim-css3-syntax'

" C/C++
Plugin 'vim-scripts/c.vim'
Plugin 'vim-scripts/CRefVim'

" Go
Plugin 'fatih/vim-go'

" Rust
Plugin 'wting/rust.vim'

" Python
Plugin 'klen/python-mode.git'
Plugin 'fs111/pydoc.vim'
Plugin 'mitsuhiko/flask'

" Erlang
Plugin 'jimenezrick/vimerl'

" Elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'carlosgaldino/elixir-snippets'

" Fortran
Plugin 'vim-scripts/ratfor.vim'

" Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'rdolgushin/gitignore.vim'
Plugin 'mattn/gist-vim'
Plugin 'jaxbot/github-issues.vim'
Plugin 'sjl/splice.vim'

" Docker
Plugin 'ekalinin/Dockerfile.vim'

" Color schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'nanotech/jellybeans.vim'
Plugin 'rking/vim-detailed'

call vundle#end()

colorscheme campfire

" hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

let g:bufExplorerShowRelativePath=1   " Use relative paths in buffer explorer
let g:indentLine_color_term = 239
let g:indentLine_char = '┆'
let g:NERDTreeWinSize = 32
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
let g:viewdoc_open='botright vnew'
let g:ctrlp_extensions = ['funky']
let g:airline_powerline_fonts=1
let g:search_engine='https://duckduckgo.com/?q='
let g:syntastic_javascript_checkers = ['standard']

runtime macros/matchit.vim          " use matchit that comes with vim
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" VIM settins
call matchadd('ColorColumn', '\%81v', 100) " mark when I go over 80 chars per line
set nowrap                          " Disable line wrapping, will now scroll horizontially for long linnes
set showcmd                         " Have bottom line show details of command being executed
set mouse=a                         " enable scrolling in the terminal vim
set autoindent                      " Copy indent from current line when starting a new line
set autoread
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
set nofoldenable                    " All fold will be open
set laststatus=2                    " Sets when the last window will have a status line, set to always
set t_Co=256                        " Number of colors
set encoding=utf-8                  " Set the character encoding used inside VIM. Applies to text in buffers, registers, Strings in expressions etc.
set spelllang=en_us

" Normal mode key mappings
noremap ; :
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
nnoremap <silent>gu :GundoToggle<cr>
nnoremap <silent><leader>f :CtrlP<Enter>
nnoremap <silent><leader>fu :CtrlPFunky<cr>
nnoremap <silent><leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<cr>  " narrow the list down with a word under cursor
nnoremap <silent><leader>m :TagbarToggle<cr>
nnoremap <silent><leader><right> :bn<cr>
nnoremap <silent><leader><left> :bp<cr>
nnoremap <silent><leader>n :NERDTreeToggle<cr>

" Insert mode key mappings
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

if has("gui_running")
	inoremap <C-Space> <C-n>
else
	inoremap <Nul> <C-n>
endif

" Visual mode key mappings
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <silent> <Enter> :EasyAlign<cr>

" Auto commands
au BufNewFile,BufRead *rc call SetFileTypeSH("bash")
au bufwritepost *.js silent !standard % --format

command Hoff nohlsearch

