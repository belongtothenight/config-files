set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab
set mouse=a
set encoding=UTF-8
set completeopt-=preview " For No Previews
set nocompatible
filetype plugin on
syntax on

call plug#begin()
Plug 'vimwiki/vimwiki' " VimWiki
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/rstacruz/vim-closer' " For brackets autocompletion
Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {
call plug#end()

augroup my_color_sheme
	autocmd!
	autocmd ColorScheme * highlight Normal guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight NonText guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight LineNr guibg=NONE ctermbg=NONE
augroup END
"Ref: https://github.com/rafi/awesome-vim-colorschemes/tree/master?tab=readme-ov-file
"colorscheme onedark
colorscheme twilight256
"colorscheme termschool
"colorscheme sonokai
"colorscheme rdark-terminal2
"colorscheme pink-moon
"colorscheme nord
"colorscheme minimalist
"colorscheme lucius
"colorscheme jellybeans
"colorscheme parsec
"colorscheme papercolor
"colorscheme Iceberg
"colorscheme focuspoint
"colorscheme Atom
"colorscheme Archery
"colorscheme abstract

let g:vimwiki_list = [{
			\'syntax': 'markdown',
			\'ext': '.md'
			\}]
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"make vim recognize non-main tex file
let g:tex_flavor = 'latex'

imap jj <Esc>
nmap <F8> :TagbarToggle<CR>
nnoremap <C-f> :NERDTreeRefreshRoot<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
