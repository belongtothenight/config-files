"Check original source at:
" 1. https://www.youtube.com/watch?v=JWReY93Vl6g
" 2. https://github.com/NeuralNine/config-files/blob/master/init.vim

" Usage
" 1. Rename as "init.vim" before using.
" 2. Copy the file to "/home/user/.config/nvim/"

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

set encoding=UTF-8

imap jj <Esc>

:set completeopt-=preview " For No Previews

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

augroup fish_syntax
    au!
    autocmd BufNewFile,BufRead *.fish set syntax=sh
augroup end

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"