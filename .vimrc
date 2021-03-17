:set number relativenumber
" 80 characters line
set colorcolumn=81
" execute "set colorcolumn=" . join(range(81,335), ',')
highlight ColorColumn ctermbg=Black ctermfg=DarkRed

" Show whitespaces
set listchars=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<,space:·
nmap <F5> :set list!<CR>

nmap <F7> :NERDTree<CR>
nmap <F8> :TagbarToggle<CR>

" Highlight trailing spaces
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set tags=~/repos/linux-stable/tags
cs add ~/repos/linux-stable/cscope.out
let g:linuxsty_patterns = [ "/home/vkharchuk/repos/linux-stable", "/home/vkharchuk/gl-kernel-training-2021/" ]

set background=dark

" Important!!
if has('termguicolors')
  set termguicolors
endif

let g:edge_style = 'neon'
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1

colorscheme edge
set nocompatible
