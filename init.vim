" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~\AppData\Local\nvim\plugged')

Plug 'mhartington/oceanic-next'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'

Plug 'scrooloose/nerdcommenter'
" Plugin 'scrooloose/syntastic'

" for linting
Plug 'w0rp/ale'

Plug 'kien/ctrlp.vim'

" Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'

Plug 'ervandew/supertab'

"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx'

Plug  'ternjs/tern_for_vim', { 'do': 'npm install tern' }
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

"Plug 'wokalski/autocomplete-flow'
" For func argument completion
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'

let g:deoplete#enable_at_startup = 1
" neosnippet
"let g:neosnippet#enable_completed_snippet = 1

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

Plug    'deoplete-plugins/deoplete-jedi'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'vim-flake8'

" php5 autocomplete
Plug 'lvht/phpcd.vim', { 'branch': 'php5', 'for': 'php', 'do': 'composer install' }

Plug 'alvan/vim-closetag'

Plug 'Yggdroot/indentLine'

call plug#end()

" file types and encoding
set fileformats=unix,dos,mac
set encoding=utf-8
" set wildignore=.svn,CVS,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
" set autochdir " always switch to the current file directory
" set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
" use system clipboard as default register when register not specified
set clipboard=unnamed
" put a $ sign for the stuff to change
set cpoptions+=$

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set backspace=indent,eol,start " make backspace a more flexible

" allow moving away from modified buffer
set hidden

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <leader>u :nohl<CR>
vnoremap <leader>u :nohl<CR>
inoremap <leader>u :nohl<CR>

" Similar to yy, this command copies a line without leading/trailing white
" spaces
nnoremap <Leader>yy ^yg_

" Quicksave command
" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
"" noremap <C-Z> :update<CR>
"" vnoremap <C-Z> <C-C>:update<CR>
"" inoremap <C-Z> <C-O>:update<CR>

" Press i to enter insert mode, and jj to exit
inoremap jj <Esc>

" map the line splitting command in insert mode
imap <C-l> <CR><ESC>O

" Quick quit command
"" noremap <Leader>e :quit<CR> " Quit current window
"" noremap <Leader>E :qa!<CR> " Quit all windows


" get out of terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap jj <C-\><C-n>

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
"" map <Leader>n <esc>:tabprevious<CR>
"" map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
" vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), then select several lines of code here and
" then press ``>`` several times.
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" remove trailing white space
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" easily open vimrc file '~\AppData\Local\nvim\init.vim'
nmap <leader>v :tabedit $MYVIMRC<CR>

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

" Set region to US English
" default is just en
"set spelllang=en_us

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin on
"filetype plugin indent on
" syntax on
syntax enable

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
"" set t_Co=256
"" color wombat256mod
"colorscheme wombat256mod
" colorscheme navajo-night
"colorscheme xoria256
if (has("termguicolors"))
    set termguicolors
endif
" set termguicolors
" " set background=dark
" " colorscheme solarized8
" let g:solarized_termcolors=256
colorscheme OceanicNext


set omnifunc=syntaxcomplete#Complete

" Showing line numbers and length
set number " show line numbers
set textwidth=79 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" easier formatting of paragraphs
"" vmap Q gq
"" nmap Q gqap

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" reflect changes in vimrc on the fly
if has("autocmd")
    autocmd bufwritepost _vimrc source $MYVIMRC
endif

autocmd Filetype html setlocal ts=2 sts=2 sw=2
"autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype R setlocal ts=2 sts=2 sw=2

" Make search case insensitive
set hlsearch " highlight the search results
set incsearch " show the next match while entering a search
set ignorecase
set smartcase
" set infercase " case inferred by default

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile
" set backup " make backup files
" set backupdir=~/.vim/backup " where to put backup files
" set directory=~/.vim/swp" where to put .swp files

set listchars=tab:>-,trail:- " show tabs and trailing
set lazyredraw " do not redraw while running macros
set laststatus=2 " always show the status line
set linespace=0 " don't insert any extra pixel lines betweens rows
set list " we do what to show tabs, to ensure we get them out of my files
set matchtime=5 " how many tenths of a second to blink matching brackets for
set nostartofline " leave my cursor where it was
set numberwidth=5 " We are good up to 99999 lines
set report=0 " tell us when anything is changed via :...
set ruler " Always show current positions along the bottom
set scrolloff=10 " Keep 10 lines (top/bottom) for scope
" set shortmess=aOstT " shortens messages to avoid
" 'press a key' prompt
set showcmd " show the command being typed
set showmatch " show matching brackets
set sidescrolloff=10 " Keep 5 lines at the size

" when C-n and C-p is pressed, this determines in which order
" vim will search for the string to match the key before thre cursor
" help 'complete' to see details
set complete=.,w,b,t

" command to change the current directory
" set the current directory for the current window
" % gives the name of the current file; %:p gives its fulle path
" and %:p:h gives its directory (the head of the full path)
map <leader>lcd :lcd %:p:h<CR>
" set the current directory for all window
map <leader>cd :cd %:p:h<CR>


" ==============================================================================
" nerdcommenter setup
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" ==============================================================================
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" ==============================================================================
" let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'

" ==============================================================================
" Set bin if you have many instalations
let g:deoplete#sources#ternjs#tern_bin = 'C:\Users\a0273827\AppData\Roaming\npm\node_modules\tern\bin'
let g:deoplete#sources#ternjs#timeout = 1

" ==============================================================================
" config ale
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" " You can disable this option too
" " if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
" Fix files with prettier, and then ESLint.
" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}
nmap <leader>d <Plug>(ale_fix)
