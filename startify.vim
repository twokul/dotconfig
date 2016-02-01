let g:startify_session_dir='~/.nvim/session'
let g:startify_list_order = ['files', 'dir', 'bookmarks', 'sessions']

let g:startify_list_order = [
  \ ['   My most recently', '   used files'],
  \ 'files',
  \ ['   My most recently used files in the current directory:'],
  \ 'dir',
  \ ['   These are my sessions:'],
  \ 'sessions',
  \ ['   These are my bookmarks:'],
  \ 'bookmarks',
  \ ]

let g:startify_bookmarks = [ {'v': '~/.vimrc'}, '~/.zshrc' ]
let g:startify_session_persistence = 1
let g:startify_custom_header = 'Victory is reserved for those who are willing to pay its price.'
