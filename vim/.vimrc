imap fd <Esc>

set encoding=utf-8    " Set character encoding to UTF-8
set number            " Show line numbers
set autoindent        " Enable automatic indentation
set expandtab         " Use spaces instead of tabs
set tabstop=2         " Set the width of a tab to 4 spaces
set shiftwidth=2      " Set the number of spaces to use for indentation
set showmatch         " Highlight matching parentheses
set ignorecase        " Ignore case when searching
set smartcase         " Use case-sensitive search if there's a capital letter
set incsearch         " Show search matches as you type
set hlsearch          " Highlight search results

syntax enable         " Enable syntax highlighting
set background=dark   " Set the background color to dark
colorscheme desert    " Use the desert color scheme


" automatic plugins installation, see: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" to install vim-plug see: https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'

Plug 'tpope/vim-sensible'

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Initialize plugin system
call plug#end()


" NERDTree settings
autocmd vimenter * NERDTree   " Automatically open NERDTree on startup
map <C-n> :NERDTreeToggle<CR> " Toggle NERDTree with Ctrl+n
