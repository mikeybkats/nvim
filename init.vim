if &compatible
set nocompatible
endif

set runtimepath+=~/.config/nvim/dein.vim

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

"Neoformat uses a variety of formatters for many filetypes.
Plug 'sbdchd/neoformat'

"Syntax files for Solidity, the contract-oriented programming language for Ethereum.
"Plug 'tomlion/vim-solidity'

"Syntax highlighting and indenting for JSX (needs pangloss/vim-javascript)
Plug 'mxw/vim-jsx'

"Plug 'ElmCast/elm-vim'
"Plug 'flowtype/vim-flow'
"Plug 'wokalski/autocomplete-flow'

"Neosnippet plug-In adds snippet support to Vim. Snippets are small templates for commonly used code that you can fill in on the fly. 
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

"Plug 'vim-scripts/AnsiEsc.vim'
"Plug 'jceb/vim-hier'
"Plug 'HerringtonDarkholme/yats.vim'

"vimproc is a great asynchronous execution library
Plug 'Shougo/vimproc.vim', {'do': 'make'}

"Plug 'Quramy/tsuquyomi', { 'do': 'npm install -g typescript' }

"Vim sugar for the UNIX shell commands
Plug 'tpope/vim-eunuch'

"Plug 'terryma/vim-smooth-scroll'
"Plug 'christoomey/vim-tmux-navigator'

"Vitality restores the FocusLost and FocusGained autocommand functionality
"Plug 'sjl/vitality.vim'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"this.props.fetchNextQuestionPlug 'myusuf3/numbers.vim'
"Plug 'rakr/vim-one'
"Plug 'joshdick/onedark.vim'
"Plug 'ryanoasis/vim-devicons'
"Plug 'rizzatti/dash.vim'
"Plug 'MarcWeber/vim-addon-local-vimrc'
"Plug 'vim-scripts/rubycomplete.vim'
"Plug 'tommcdo/vim-fugitive'
"Plug 'tpope/vim-unimpaired'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'tpope/vim-rhubarb'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim', { 'dir': '~/.fzf', 'do': './install --all' }

"Plug 'tpope/vim-commentary'

"provides an asynchronous keyword completion system in the current buffer
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"providing linting in NeoVim
"Plug 'w0rp/ale'

"Plug 'Quramy/vim-js-pretty-template'
"Plug 'vim-syntastic/syntastic'
"Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-surround'
"Plug 'Raimondi/delimitMate'
"Plug 'alvan/vim-closetag'
"Plug 'easymotion/vim-easymotion'
"Plug 'tpope/vim-fugitive'
"Plug 'haya14busa/incsearch.vim'
"Plug 'ervandew/supertab'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Sets the project root to the current Git repository by default
Plug 'airblade/vim-rooter'

"Plug 'tpope/vim-endwise'
" Shows the current git diff in the gutter.
"Plug 'tpope/vim-sleuth'
"Plug 'airblade/vim-gitgutter'
"
" Language syntax highlighting
Plug 'digitaltoad/vim-pug'

" Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'

Plug 'mattn/emmet-vim'

Plug 'jaxbot/semantic-highlight.vim'

Plug 'isruslan/vim-es6'

" Plug 'SirVer/ultisnips'

"Plug 'honza/vim-snippets'
"Plug 'fatih/vim-go'
"Plug 'kchmck/vim-coffee-script'
"Plug 'slim-template/vim-slim'
"Plug 'tpope/vim-bundler'
"Plug 'vim-ruby/vim-ruby'
"Plug 'othree/html5.vim'
"Plug 'tpope/vim-rails'

"Highlight CSS colors
Plug 'ap/vim-css-color'

" Linting
Plug 'neomake/neomake'

" Quickly run Unix commands.
Plug 'tpope/vim-eunuch'

" Automatically resize open splits so the current is the biggest
"Plug 'roman/golden-ratio'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'liuchengxu/space-vim-dark'
call plug#end()

let g:NERDTreeChDirMode = 1

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


"syntax highlighting jsdocs
let g:javascript_plugin_jsdoc = 1

"enable jsx syntax in .js files
let g:jsx_ext_required = 0

let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

let g:airline#extensions#ale#enabled = 1

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1

""""""""""""""
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

"use deoplete
let g:deoplete#enable_at_startup=1
" Use neocomplete.
let g:neocomplete#enable_at_startup=0
" Use smartcase.
let g:neocomplete#enable_smart_case=1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
 " return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"""""""


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


"syntax enable
set background=dark
colo solarized8_flat 

let g:solarized_termcolors=256
let $NVIM_TUI_ENABLE_TRUE_COLORS=1

set nocp
set backspace=indent,eol,start
set hls is
set ruler
set history=50
set showcmd
set incsearch
set undofile
set undodir=~/vim-temp-files
set backupdir
set backupdir=~/vim-temp-files
set mouse=a
set ma

autocmd BufEnter * lcd %:p:h

filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

set relativenumber
set number


"key remaps
nnoremap <F2> :set relativenumber!<CR> 
nnoremap <F3> :set invnumber<CR>
nnoremap <F4> :set wrap!<CR>
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <C-e> :NERDTreeToggle .<CR>
nnoremap <C-n> :NERDTreeToggle .<CR>
nnoremap <C-f>r :NERDTreeFind<CR>
nnoremap <C-p> :FZF<CR>
vnoremap <C-c> "*y
		
filetype on
