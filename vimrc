set nocompatible " explicitly get out of vi-compatible mode
set vb t_vb= "prevents beeping
set go-=T

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
set clipboard=unnamed
" set clipboard+=unnamed " share windows clipboard
" put a $ sign for the stuff to change
set cpoptions+=$

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set backspace=indent,eol,start " make backspace a more flexible

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <leader>n :nohl<CR>
vnoremap <leader>n :nohl<CR>
inoremap <leader>n :nohl<CR>

" Quicksave command
"" noremap <C-Z> :update<CR>
"" vnoremap <C-Z> <C-C>:update<CR>
"" inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
"" noremap <Leader>e :quit<CR> " Quit current window
"" noremap <Leader>E :qa!<CR> " Quit all windows


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
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), then select several lines of code here and
" then press ``>`` several times.
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
"" set t_Co=256
"" color wombat256mod
" colorscheme wombat256mod
colorscheme navajo-night

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

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

set laststatus=2 " always show the status line
set lazyredraw " do not redraw while running macros
set linespace=0 " don't insert any extra pixel lines betweens rows
set list " we do what to show tabs, to ensure we get them out of my files
set listchars=tab:>-,trail:- " show tabs and trailing
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
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer
" }
"
" Text Formatting/Layout {
" set completeopt= " don't use a pop up menu for completions
" set formatoptions=rq " Automatically insert comment leader on return,
" and let gq format comments
" map <F9> <ESC>:setfiletype spice<CR>
" map <F10> <ESC>:setfiletype spectre<CR>
" map <F11> <ESC>:setfiletype perl<CR>
" map <F12> <ESC>:setfiletype sh<CR>
" set list on
" }

" when C-n and C-p is pressed, this determines in which order
" vim will search for the string to match the key before thre cursor
set complete=.,w,b,t

" command to change the current directory
" set the current directory for the current window
" % gives the name of the current file; %:p gives its fulle path
" and %:p:h gives its directory (the head of the full path)
map <leader>lcd :lcd %:p:h<CR>
" set the current directory for all window
map <leader>cd :cd %:p:h<CR>

" GUI Settings {
if has("gui_running")
    " Basics {
    set cursorcolumn " highlight the current column
    set cursorline " highlight current line
    set tabpagemax=500
    " colorscheme evening "koehler " my color scheme (only works in GUI)
    " colorscheme xoria256
    " colorscheme navajo-night
    set columns=100 " perfect size for me
    set lines=40 " perfect size for me
    if has("gui_gtk2")
    "    set guifont=Courier\ Bold\ 10
        set guifont=DejaVu\ Sans\ Mono\ 10
    elseif has("X11")
        set guifont=-ibm-ergonomic-medium-r-normal-*-*-150-*-*-c-*-ibm-850 "-ibm-type-medium-r-normal-*-*-140-*-*-m-*-iso8859-1 " set gui font type and size
    " set guifont=-ibm-times-medium-r-normal-*-*-140-*-*-m-*-ibm-pc910
    else
        set guifont=Consolas:h10
    endif
    " set guioptions=ce 
    "              ||
    "              |+-- use simple dialogs rather than pop-ups
    "              +  use GUI tabs, not console style tabs
    set mousehide " hide the mouse cursor when typing

    " Font Switching Binds {
    " map <F7> <ESC>:set guifont=-ibm-times-medium-r-normal-*-*-140-*-*-m-*-ibm-pc910<CR>
    map <F7> <ESC>:set guifont=-b&h-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-iso10646-1<CR>
endif " gui_running
" }


" Pathogen {
" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
execute pathogen#infect()
execute pathogen#helptags()
" }


" ============================================================================
" Python IDE Setup
" ============================================================================

" Settings for vim-powerline
" This provides status bar in the vim session
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git this version will be
" deprecated soon once powerline is ready
" git clone https://github.com/Lokaltog/powerline.git
" set laststatus=2


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for nerd tree
" git clone https://github.com/scrooloose/nerdtree.git
" map <C-q> :NERDTreeToggle<CR>
map <leader>t :NERDTreeToggle<CR>

" Settings for nerd commenter
" git clone https://github.com/scrooloose/nerdcommenter.git
filetype plugin on

" Settings for UltiSnips
" git clone https://github.com/SirVer/ultisnips.git
" requires vim with python support
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Settings for delimitMate
" git clone https://github.com/Raimondi/delimitMate.git

" Settings for Syntastic
" git clone https://github.com/scrooloose/syntastic.git
" make the mode passive. only run checkers explicitly
let g:syntastic_mode_map = { "mode": "passive",
                            \ "active_filetypes": [],
                            \ "passive_filetypes": [] }
" set the command to explicitly run the checkers
nnoremap <leader>e :SyntasticCheck<CR>
" set the checkers to use for different languages
let g:syntastic_python_checkers = ['pylint', 'flake8']
" let g:syntastic_java_checkers = ['javac', 'checkstyle']
let g:syntastic_java_checkers = ['javac', 'checkstyle']
" set the file to be used for java checkstyle
let g:syntastic_java_checkstyle_classpath = 'C:\Users\a0273827\Documents\Programs\checkstyle-5.7\checkstyle-5.7-all.jar'
let g:syntastic_java_checkstyle_conf_file = 'C:\Users\a0273827\Documents\Programs\checkstyle-5.7\sun_checks.xml'

" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
"" map <Leader>g :call RopeGotoDefinition()<CR>
"" let ropevim_enable_shortcuts = 1
"" let g:pymode_rope_goto_def_newwin = "vnew"
"" let g:pymode_rope_extended_complete = 1
"" let g:pymode_breakpoint = 0
"" let g:pymode_syntax = 1
"" let g:pymode_syntax_builtin_objs = 0
"" let g:pymode_syntax_builtin_funcs = 0
"" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
" disable auto-completion when a dot is typed
let g:jedi#popup_on_dot = 0
" buffers will be used
let g:jedi#use_tabs_not_buffers = 0
" go to will open split instead
"let g:jedi#use_splits_not_buffers = "left"
" selects the first line of the completion
let g:jedi#popup_select_first = 0
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = "<leader>d"
" let g:jedi#documentation_command = "K"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#completions_command = "<S-Space>"
" let g:jedi#rename_command = "<leader>r"
" let g:jedi#show_call_signatures = "1"
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
set nofoldenable
nnoremap <space> za
