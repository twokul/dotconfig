"" Use comma as leader
let mapleader = ","

" Disable Ex mode from Q
nnoremap Q <nop>

" NERDTree settings
map <leader>n :NERDTreeToggle<CR> " Toggle NERDTree
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:NERDSpaceDelims = 1
let g:NERDTreeWinSize = 40

" Split window vertically or horizontally *and* switch to the new split!
nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>:wincmd =<CR>
nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>:wincmd =<CR>

" Toggle highlight
nnoremap <leader><space> :nohls<cr>

" Adjust viewports to the same size
map <leader>= <C-w>=
" Swap Windows
nnoremap <leader>sw <C-s>w<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Use CTRL to move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

function! StripWhitespace ()
  exec ':%s/ \+$//gc'
endfunction

map <leader>s :call StripWhitespace ()<CR>

" Support for NeoVim terminal emulation splits
nnoremap <C-T>\| :rightb vsp term:///bin/zsh<CR>
nnoremap <C-T>- :bel sp term:///bin/zsh<CR>
