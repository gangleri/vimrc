set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles 

" VIM general
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/AutoClose'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'c9s/bufexplorer'
Bundle 'garbas/vim-snipmate'
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

" HTML Bundles
Bundle 'mattn/zencoding-vim'

" JavaScript/Node Bundles

" CSS Bundles

" C/C++

" Python

" Erlang

" Git
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'

" Color schemes
Bundle 'flazz/vim-colorschemes'
Bundle 'nanotech/jellybeans.vim'
Bundle 'rking/vim-detailed'

filetype plugin indent on
