" ---------------
" Color
" ---------------
set background=dark
colorscheme solarized
" Force 256 color mode if available
if $TERM =~ '-256color'
   set t_Co=256
endif

" ---------------
" UI
" ---------------
set guifont=Source\ Code\ Pro\ ExtraLight:h18
set number         " Show line numbers
set numberwidth=5  " Always use 5 characters for line number gutter
set nowrap         " don't wrap lines
set encoding=utf-8 " Set default encoding to UTF-8
set cmdheight=2    " Make the command area two lines high
set cursorline     " Highlight current line
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
" Disable tooltips for hovering keywords in Vim
if exists('+ballooneval')
  " This doesn't seem to stop tooltips for Ruby files
  set noballooneval
  " 100 second delay seems to be the only way to disable the tooltips
  set balloondelay=100000
endif

" ---------------
" Behaviors
" ---------------
set autoread          " automatically update file unless buffer has unsaved changes
syntax enable         " Turn on syntax highlighting allowing local overrides
set hidden            " allow buffer switching without saving
set history=1000      " Store a ton of history (default is 20)
set noswapfile
set nostartofline      " Don't go to the start of the line after some commands
set pastetoggle=<F7>
" set showcmd
set timeout
set timeoutlen=1000    " Time to wait for a command (after leader for example).
set ttimeoutlen=100    " Time to wait for a key sequence.
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=3        " minimum lines to keep above and below cursor
set switchbuf=useopen  " Switch to an existing buffer if one exists

" ---------------
" Text Format
" ---------------
set tabstop=2
set backspace=indent,eol,start " Delete everything with backspace
set shiftwidth=2 " Tabs under smart indent
set shiftround
set cindent
set autoindent
set smarttab
set expandtab

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch  " Incremental search
set hlsearch   " Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,*.lessc,*/bower_components/*,*/node_modules/*
set wildmode=list:longest,list:full
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

" Gary Bernhardt's split style
set winwidth=79
set winheight=5
set winminheight=5
set winheight=999

" Visual
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

set list                          " Show invisible characters
set listchars=""                  " Reset the listchars
set listchars=tab:▸▸              " a tab should display as "__", trailing whitespace as "."
set listchars+=trail:•            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set t_ti= t_te=
set lazyredraw            " don't redraw while in macros

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" Mouse support
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes
if !has('nvim')
  set ttymouse=xterm2
endif

" Better complete options to speed it up
set complete=.,w,b,u,U

" Syntastic and eslint: show warnings
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'
