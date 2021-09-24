" General Config
set nocompatible                 " Disable compatibility to old-time vi
set showmatch                    " Show matching brackets.
set ignorecase                   " Case insensitive matching
set mouse=v                      " Middle-click paste with mouse
set hlsearch                     " Highlight search results
set tabstop=4                    " Number of columns occupied by a tab character
set softtabstop=4                " See multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=4                 " Width for autoindents
set autoindent                   " Indent a new line the same amount as the line just typed
set number                       " Add line numbers
set relativenumber               " Make line numbers relative
set wildmode=longest,list        " Get bash-like tab completions
set hidden                       " Hide buffer don't delete
set backspace=indent,eol,start   " Delete anything in insert
filetype plugin indent on        " Allows auto-indenting depending on file type
syntax on                        " Syntax highlighting

"Arrows wack
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Time savers
nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap <silent> <Space>, :nohlsearch<CR> 

" Buffer commands
nnoremap <Space>bb :buffers<CR>:buffer<Space>
nnoremap <Space>b1 :buffer 1<CR>
nnoremap <Space>b2 :buffer 2<CR>
nnoremap <Space>b3 :buffer 3<CR>
nnoremap <Space>b4 :buffer 4<CR>
nnoremap <Space>b5 :buffer 5<CR>
nnoremap <Space>b6 :buffer 6<CR>
nnoremap <Space>b7 :buffer 7<CR>
nnoremap <Space>b8 :buffer 8<CR>
nnoremap <Space>b9 :buffer 9<CR>
nnoremap <Space>bn :bnext<CR>
nnoremap <Space>bp :bprev<CR>
nnoremap <Space>be :edit<CR>:edit<Space>
nnoremap <Space>bd :bp<bar>vsp<bar>bn<bar>bd<CR>
" nnoremap <Space>bd :bd<CR>:bd<Space>

" Window commands
nnoremap <Space>ww :W<CR>
nnoremap <Space>we :vs<CR>
nnoremap <Space>wh :wincmd h<CR>
nnoremap <Space>wj :wincmd j<CR>
nnoremap <Space>wk :wincmd k<CR>
nnoremap <Space>wl :wincmd l<CR>
nnoremap <Space>wn :wincmd w<CR>
nnoremap <Space>wc :close<CR>
nnoremap <Space>wq :SmartClose<CR> 

" Terminal commands
nnoremap <Space>th :bel split term://zsh<CR>
nnoremap <Space>tv :vsplit term://zsh<CR>
tnoremap <Esc> <C-\><C-n>

" Plugins and theme
source $HOME/.config/nvim/vim-plug/plugins.vim
autocmd vimenter * ++nested colorscheme gruvbox

" NerdTree Config
nnoremap <Space>fn :NERDTreeFocus<CR>
nnoremap <Space>ft :NERDTreeToggle<CR>
nnoremap <Space>ff :NERDTreeFind
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

" ALE Binds
nnoremap K :ALEHover<CR>
nnoremap <Space>] :ALENextWrap<CR>        
nnoremap <Space>[ :ALEPreviousWrap<CR> 
nnoremap <silent> <Space>r :ALEFindReferences<CR>
" error markers
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

