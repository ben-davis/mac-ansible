" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/ZoomWin'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'vim-scripts/Conque-Shell'

Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'

Plugin 'chriskempson/base16-vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Customisation

colorscheme base16-ocean
let base16colorspace=256
set background=dark

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
inoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


" recognise files
filetype on
filetype plugin on
filetype indent on

" syntax
syntax on

" ruler
set ruler

" indentation
set autoindent
set smartindent

" tab setup
set tabstop=4
set shiftwidth=4

" don't expand
set noexpandtab

" nope to vi
set nocompatible

" Temp files? do not want
set nobackup
set noswapfile

" show matching braces
set showmatch

" searching
set hlsearch
set incsearch

" some extras

" line numbers
map <C-l> :set number!<CR>

" Turn off toolbar
set guioptions-=T

" sensible backspace
set backspace=2

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

set textwidth=99
set fo-=t

setlocal spell spelllang=en_gb
set nospell
map <C-s> :set spell!<CR>

au BufNewFile,BufRead *.ggl setlocal ft=lua
au BufNewFile,BufRead *.ggl.in setlocal ft=lua
au Syntax ggl source $vimruntime/syntax/lua.vim
au Syntax gglsrc source $VIMRUNTIME/syntax/lua.vim

" Alert when we get too long
highlight WarnLength ctermbg=darkred ctermfg=white guibg=#773333
match WarnLength /\%>99v.\+/

" Highlight mismatches as bad
highlight BadWhitespace ctermbg=red guibg=red
" Warn about any trailing whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set hls!
set number
" set autochdir
set hidden

nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j


set statusline+=%F
set laststatus=2
hi StatusLine ctermfg=black ctermbg=white

" Plugin Customisation

" Tagbar
nnoremap <leader>b :TagbarToggle<CR>

" Ctrlp
let g:ctrlp_extensions = ['tag', 'buffertag', 'file']
nnoremap <C-e> :CtrlPTag<CR>
nnoremap <C-r> :CtrlPBufTag<CR>

" python-mode
" Disable rope, so we can use jedi
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

let g:pymode_options_max_line_length = 120
let g:pymode_trim_whitespaces = 1
let g:pymode_indent = 1

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
