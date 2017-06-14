if &compatible
set nocompatible
endif

set runtimepath+=~/.config/nvim/dein.vim

call dein#begin('/Users/michaelbarakat/.config/nvim')

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/vimproc.vim', {'build' : {'mac' : 'make'}})
call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/denite.nvim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('scrooloose/nerdcommenter')	
call dein#add('scrooloose/nerdtree', {'on_cmd': 'NERDTreeToggle'})
call dein#add('jeffkreeftmeijer/vim-numbertoggle')
call dein#add('vim-scripts/FuzzyFinder')
call dein#local('~/.config/nvim/autoload/')
call dein#end()

let g:airline_theme='solarized'
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:javascript_plugin_jsdoc = 1

let g:NumberToggleTrigger="<F2>"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

autocmd BufWinEnter * NERDTreeMirror

colo solarized

let g:deoplete#enable_at_startup=1
let g:solarized_termcolors=256
let $NVIM_TUI_ENABLE_TRUE_COLORS=1

set background=dark
set nocp
set backspace=indent,eol,start
set number
set hls is
set ruler
set backup
set history=50
set showcmd
set incsearch

set relativenumber
set number

nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <C-e> :NERDTreeToggle<CR>
		
filetype on
filetype plugin indent on
syntax enable
