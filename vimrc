set nocompatible
scriptencoding utf-8
set ffs=unix,dos

execute pathogen#infect()
syntax on
filetype plugin indent on

" don't wrap lines
set nowrap
" Colorscheme
set background=dark
"colorscheme tomorrow_night
colorscheme jellybeans
" Turn on line numbers
set number
set numberwidth=4
set backspace=indent,eol,start  "Allow backspace in insert mode
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set hidden                      "Allow current buffer to be put in
				                " background
				                "without being written to disk

set colorcolumn=120 "to help us keep our lines under 120 chars
"set shiftwidth=4
"set tabstop=4
"set expandtab
"set noexpandtab

" tabs vs spaces configuration
set noexpandtab
set copyindent
set preserveindent
set softtabstop=4
set shiftwidth=4
set tabstop=4

" configure backup folders and backups
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undodir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp	" undo files
set backup	" enable backups

" list special chars
set list listchars=tab:▸\ ,trail:.

" smart indentation overriden by individual filetype settings
set smartindent
" show matching braces, brackets and such
set showmatch

"status line
set laststatus=2
set statusline=%{fugitive#statusline()}\ %F%m%r%h%w\ [fmt=%{&ff}]\ [type=%Y]\ [pos=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"autocomplete options
set completeopt=menuone,longest,preview
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType python set omnifunc=pythoncomplete#Complete
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS

"--- MRU configs ---
let MRU_Max_Entries = 20
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix

"------  Tagbar Options  ------
" http://adamyoung.net/Exuberant-Ctags-OS-X
" http://www.vim.org/scripts/script.php?script_id=273
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=26
noremap <silent> <Leader>y :TagbarToggle<CR>

"--- Powerline configs ---
let g:Powerline_symbols = 'fancy'

"--- NERD_tree config ---
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']


"--- Python mode settings ---
" Set key 'R' for run python code
"let g:pymode_run_key = 'R'
" Load show documentation plugin
"let g:pymode_doc = 1
" Key for show python documentation
"let g:pymode_doc_key = 'K'

" Mappings
nmap <F9> :NERDTree<cr>
nmap <F8> :TagbarToggle<CR>
map <F1> :set nonumber !<cr>
