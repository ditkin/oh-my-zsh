:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
let mapleader=","
:nnoremap <F5> :grep <C-R><C-W> *<CR>
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-scripts/vtreeexplorer' 

call vundle#end()

:map E <Nop>
:map E :Explore
:map <Tab> <Nop>
:map <Tab> :vsp
:map <S-Tab> :sp
":map a <Nop>
":map a 0
nmap <S-CR> O<Esc>
nmap <CR> o<Esc>
:map <Leader> :w
:map < :q
":map <leader> :w
:vmap jj <Esc>
:nnoremap e $
:nnoremap <Space> i
:map - <Nop>
:map - gg
:imap jj <Esc>l
:map <M-s> :w<kEnter>
:imap <M-s> <Esc>:w<kEnter>i
:nnoremap <C-j> <C-W><C-J>
:nnoremap <C-k> <C-W><C-K>
:nnoremap <C-l> <C-W><C-L>
:nnoremap <C-h> <C-W><C-H>
:nnoremap ƒ :%s/
:vmap ƒ :s/\%V
:nmap <C-e> <Nop> 
:nmap <C-e> :VTreeExplore
:nmap [ :vertical resize 
:nmap ] :res
":vmap f :s/\%V
"sets random stuff
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backupdir=~/.vim/backup_files//
set dir=~/.vim/swap_files//
set undodir=~/.vim/undo_files//
set expandtab
set number
set cursorline
set showcmd
set wildmenu
set lazyredraw
set showmatch
set hlsearch
execute pathogen#infect()
syntax on
filetype plugin indent on
:set smartindent
:color desert
colorscheme desert
autocmd BufNewFile,BufRead *.json set ft=javascript
