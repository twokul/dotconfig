" *******************************
" * file type setup 		*
" *******************************
"
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" automatically trim whitespace for specific file types
autocmd FileType c,cpp,java,php,ruby,perl autocmd BufWritePre <buffer> :%s/\s\+$//e

" Treat JSON files like JavaScript
autocmd BufNewFile,BufRead *.json set filetype=javascript

" Remember last location in file, but not for commit messages.
" see :help last-position-jump
autocmd BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
\| exe "normal! g`\"" | endif


" Enable omni completion.
if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \if &omnifunc == "" |
        \setlocal omnifunc=syntaxcomplete#Complete |
        \endif
endif

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType scss set iskeyword+=-

au BufRead,BufNewFile *.scss set filetype=scss.css
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars