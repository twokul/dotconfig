" set the runtime path to include Vundle and initialize
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Bundle 'gmarik/vundle'

Plugin 'tpope/vim-fugitive' " git wrapper so awesome, it should be illegal
Plugin 'vim-airline/vim-airline' " lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree' " tree explorer plugin for vim.
Plugin 'twokul/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'godlygeek/tabular'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-repeat'
Plugin 'Raimondi/delimitMate'
Plugin 'mhinz/vim-signify'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'tomtom/tcomment_vim'
Plugin 'elzr/vim-json'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'Valloric/MatchTagAlways'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'L9'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'henrik/vim-reveal-in-finder'
Plugin 'papanikge/vim-voogle'
Plugin 'mutewinter/nginx.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/vim-github-dashboard' "Browse GitHub events (user dashboard, user/repo activity) in Vim.

call vundle#end()

set rtp+=~/.fzf
filetype plugin indent on
