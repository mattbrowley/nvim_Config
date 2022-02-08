"""""""""""""""""""""
"      Plugins      "
"""""""""""""""""""""
call plug#begin('~/.vim/plugged')
" Temporary Plugins
Plug 'ThePrimeagen/vim-be-good'  " Practice vim motions, etc. with games

" Aesthetic Vim plugins
Plug 'itchyny/lightline.vim'  " Fancy status line
Plug 'mhinz/vim-startify'  " Fancy start screen
Plug 'psliwka/vim-smoothie'  " Smooth scrolling
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }  " Display colors rgb(25,100,95)
Plug 'gruvbox-community/gruvbox'  " Colorscheme
Plug 'arcticicestudio/nord-vim'
Plug 'stevearc/dressing.nvim'  " A nice windowed chooser

" General editing/utility Vim plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'vim-scripts/TaskList.vim' " #TODO etc.
Plug 'vim-scripts/restore_view.vim'  " Remembers your position, folds, etc. in files when opened
Plug 'mileszs/ack.vim'  " Use ack (a grep-like tool) in vim
Plug 'tpope/vim-surround'  " Tool for automating brackets, html tags, etc.
Plug 'tpope/vim-commentary'  " Comment or uncomment text objects (gcc)
Plug 'AndrewRadev/splitjoin.vim' " Switch between single lines and multi-lines
Plug 'fholgado/minibufexpl.vim'  " List and explore buffers like tabs
Plug 'mbbill/undotree' " Visualize the vim undo tree #TODO: map :UndotreeToggle

" Git-related plugins
Plug 'tpope/vim-git'  " Git runtime for Vim
Plug 'tpope/vim-fugitive'  " Easy Git commands wrapper
Plug 'airblade/vim-gitgutter'  " Display changes from last commit in a gutter (like diff)
Plug 'itchyny/vim-gitbranch'  " Display the git repo in the lightline

" Universal coding plugins
Plug 'SirVer/ultisnips' " Code snip tool
Plug 'honza/vim-snippets'  " Collection of useful snippets
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'reinh/vim-makegreen'  " Run make and show the status with colors
Plug 'ludovicchabant/vim-gutentags'  "Automatically generate tag files
Plug 'dense-analysis/ale'  " Asynchronous linting engine and lsp client
Plug 'maximbaz/lightline-ale'  " Put linting error icons in the lightline
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }  " Autocompletion
Plug 'neovim/nvim-lspconfig'

" Python-related plugins
Plug 'fs111/pydoc.vim'  " Integrate Python documentation into Vim
Plug 'vim-scripts/pep8'  " Use pep8 python style checker in Vim
Plug 'alfredodeza/pytest.vim'  " Run unit tests on python code and display results
Plug 'python-mode/python-mode'  " Python code tools suite
Plug 'davidhalter/jedi-vim'  " Python auto-completion tool
Plug 'deoplete-plugins/deoplete-jedi'  " Make deoplete work with Jedi

" Go-related plugins
Plug 'fatih/vim-go' " Plugin for all sorts of Golang tools
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}  " Make deoplete work with go

" Other filetype plugins
Plug 'vimwiki/vimwiki'  " Compose wikis in Vim
Plug 'lervag/vimtex'  " Some LaTeX tools
Plug 'tpope/vim-rails'  " Suite of tools for editing Ruby on Rails programs
Plug 'rstacruz/sparkup'  " Tools to make writing html faster
Plug 'stevearc/vim-arduino'  " Write and upload Arduino sketches

call plug#end()  " Automatically calls:
                 " filetype plugin indent on
                 " syntax enable

""""""""""""""""""""""
"      Settings      "
""""""""""""""""""""""
set nocompatible                " Enables us Vim specific features
set ttyfast                     " Indicate fast terminal conn for faster redraw
set laststatus=2                " Show status line always
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically read changed files
set autoindent                  " Enable Autoindent
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noerrorbells                " No beeps
set number                      " Show line number
set relativenumber              " Show the relative line numbers
set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
set autowrite                   " Automatically save before :next, :make etc.
set hidden                      " Buffer should still exist if window is closed
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set noshowmatch                 " Do not show matching brackets by flickering
set noshowmode                  " The mode is shown with lightline instead
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when it begins with upper case
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=10                " Completion window max size
set nocursorcolumn              " Do not highlight column (speeds up highlighting)
set nocursorline                " Do not highlight cursor (speeds up highlighting)
set lazyredraw                  " Wait to redraw
set foldmethod=syntax           " Fold based on syntax cues
set foldlevel=99                " Only automatically fold large blocks on file-open
set splitbelow splitright       " New split windows will be on the bottom or right
set textwidth=80                " Set the width to 80 colums
set colorcolumn=+1              " Draw a line after the textwidth (81st column)
highlight ColorColumn guibg=Grey" Make the column grey instead of red
set scrolloff=4                 " Scroll the text early to keep the curser away from edges
set complete-=i                 " Do not search included files for autocomplete options
set nrformats-=octal            " <C-a> and <C-x> will increment and decrement numbers
                                " -=octal will treat numbers starting with "0" as regular decimal numbers
set ruler                       " Show curser position. Superceded with lightline settings
set wildmenu                    " Allow selection menu for completion in command mode
set display+=lastline           " Show lines which overflow the screen. Do not replace them with @
set history=1000                " Length of command history
set textwidth=80                " Length of a line for text wrapping purposes
set shiftwidth=2                " Number of spaces used for autoindent
set tabstop=2                   " Number of spaces that a <Tab> counts for
set softtabstop=2               " Number of spaces that a <Tab> counts
set expandtab                   " Replace <Tab> charaters with spaces
set smarttab                    " <BS> will delete a full tabs worth of spaces when appropriate
set smartindent                 " Autoindent with a new line
set clipboard+=unnamedplus      " Share the unnamed register with the system clipboard
set foldmethod=indent           " Fold based on indentation
set foldlevel=0                 " Only fold above level 0 by default
set foldnestmax=4               " Only fold a max of 4 levels

" This enables us to undo file changes even if you exit Vim.
if has('persistent_undo')
  set undodir=~/.config/vim/tmp/undo//
  set undofile
endif

" Set cwd to the directory of the open file
autocmd BufEnter * silent! lcd %:p:h

" Set the Colorscheme
autocmd vimenter * ++nested colorscheme gruvbox
" colorscheme nord

set grepprg=grep\ -nH\ $*

" Register my vimwiki
let g:vimwiki_list =[{'path': '~/Documents/Wiki/', 'ext':'.wiki', 'index':'RowleyWiki', 'syntax':'default'}]

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Display when gutentags is working in the status line
set statusline+=%{gutentags#statusline()}

""""""""""""""""""""""
"      Mappings      "
""""""""""""""""""""""

" Set leader shortcut to a comma ','. By default it's the backslash
let mapleader = ","

" Jump to next error with Ctrl-n and previous error with Ctrl-m. Close the
" quickfix window with <leader>a
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" TaskList TODO: to do task FIXME: fix me task  XXX: another task
map <leader>TD <Plug>TaskList

" Visual linewise up and down by default (and use gj gk to go quicker)
noremap <Up> gk
noremap <Down> gj
noremap j gj
noremap k gk

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Yank to the end of the line like D and C
nnoremap Y y$

" Drag lines around in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Some mappings to expand and enclose brackets
inoremap (<CR> (<CR>)<C-c>O
inoremap {<CR> {<CR>}<C-c>O
inoremap [ []<C-c>i

" Make navigating splits easier
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Set f-6 to toggle spell checking
map <f6> :setlocal spell!<CR>
":set spelllang=en_us,chemistry,YAWL
":set dictionary+=/usr/share/dict/chemistry.dic dictionary+=/usr/share/dict/YAWL.dic

" Clear the search highlights with esc
nnoremap <silent> <esc> :noh<cr><esc>


" In normal mode, swap ; and : for quicker access to command mode
nnoremap ; :
nnoremap : ;


" #TODO
" 1) Learn how to use Ultisnips
" 2) Learn how to use ALE
" 3) Learn how to set spell dictionaries based on filetypes
" 4) Learn how to do folding
" 5) Learn how to use fugitive, etc.
