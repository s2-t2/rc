"""""""""""""""""""""""""""""""
" CONFIGURATION FILE FOR VIM " 
""""""""""""""""""""""""""""""
" General configuration
set nocompatible
"set nowrap
set encoding=utf8
set number
set ruler
set incsearch "move cursor to matched string without pressing while searching"
set nomodeline

" Set proper tabs
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

" prepend node directory to vim's &runtime "
:set runtimepath^=~/.vim/bundle/node

"disable auto-hide feature in json"
autocmd Filetype json let g:indentLine_setConceal = 0


" different cursor for insert mode and normal mode"
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

syntax on
filetype plugin indent on

" Indentline
":set list lcs=tab:\|\

" try yank and paste in clipboard
vmap <C-y> :!xclip -f -sel clip<CR>

"disable the pathogen plugin"
"let g:pathogen_disabled = []
"call add(g:pathogen_disabled, 'vim-autoclose')
"call pathogen#infect()

" Pathogen configuration
execute pathogen#infect()

""""""""""""""""
""" PLUGINS """"
"""""""""""""""
" Molokai color scheme
let g:molokai_original = 1
colorscheme molokai 

"change highlight color for parentheses to make it more readable
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" NERD tree
map <C-n> :NERDTreeToggle<CR>

" vim devicons
set guifont=Fura_Code_Nerd_Font_Regular_Font:h11

"vim-airline 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Prevent conceal in latex file "
let g:tex_conceal = ''

" vim-javascript"
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" vim-babeljs configuration"
let g:babeljs_presets = "react"









