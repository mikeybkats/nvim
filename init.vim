if &compatible
set nocompatible
endif

set runtimepath+=~/.config/nvim/init.vim
"set runtimepath+=/Users/michaelbarakat/.config/nvim/deoplete.nvim

let g:python_host_prog = '/Users/michaelbarakat/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/michaelbarakat/.pyenv/versions/neovim3/bin/python'

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

"Syntax highlighting and indenting for JSX (needs pangloss/vim-javascript)
Plug 'mxw/vim-jsx'


"Neosnippet plug-In adds snippet support to Vim. Snippets are small templates for commonly used code that you can fill in on the fly. 
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

"vimproc is a great asynchronous execution library
Plug 'Shougo/vimproc.vim', {'do': 'make'}

"Vim sugar for the UNIX shell commands
Plug 'tpope/vim-eunuch'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim', { 'dir': '~/.fzf', 'do': './install --all' }


"provides an asynchronous keyword completion system in the current buffer
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1


"providing linting in NeoVim
Plug 'w0rp/ale'

Plug 'Xuyuanp/nerdtree-git-plugin'

" Sets the project root to the current Git repository by default
Plug 'airblade/vim-rooter'

" Language syntax highlighting
Plug 'digitaltoad/vim-pug'

" Syntax highlighting for c
Plug 'justinmk/vim-syntax-extra'

" Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'mattn/emmet-vim'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'isruslan/vim-es6'

"Highlight CSS colors
Plug 'ap/vim-css-color'

" Quickly run Unix commands.
Plug 'tpope/vim-eunuch'

" Automatically resize open splits so the current is the biggest
Plug 'roman/golden-ratio'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'liuchengxu/space-vim-dark'
call plug#end()

let g:NERDTreeChDirMode = 1

"let g:airline_theme='solarized'
let g:airline_theme='base16'
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
let g:jsx_ext_required = 1

let g:airline#extensions#ale#enabled = 1

" ALE
" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_sign_column_always = 1
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:airline#extensions#ale#enabled = 1

""""""""""""""
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

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

let $NVIM_TUI_ENABLE_TRUE_COLORS=1
syntax enable
"set background=dark
colo apprentice 
"colo space-vim-dark 
"colo solarized8_high
"colo atom 
"colo visualstudiodark 

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
nnoremap <C-a> :ALEToggle<CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
		
filetype on
