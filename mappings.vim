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

" Map <Esc> to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Map Alt + h,j,k,l to switch windows
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <C-t> <C-n> :tabnew term:///bin/zsh<CR>
nnoremap <C-t>\| :rightb vsp term:///bin/zsh<CR>
nnoremap <C-t>- :bel sp term:///bin/zsh<CR>
