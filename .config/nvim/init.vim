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
" set cmdheight=2
" set shortmess+=c
filetype plugin indent on        " Allows auto-indenting depending on file type
syntax on                        " Syntax highlighting
set signcolumn=number
set updatetime=300

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
nnoremap <Space>l :bnext<CR>
nnoremap <Space>bn :bnext<CR>
nnoremap <Space>h :bprev<CR>
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

" Vimtex config
let g:vimtex_view_method = 'zathura'
let g:vimtex_context_pdf_viewer = 'zathura'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:vimtex_view_use_temp_files = 1
" Never Forget, To set the default viewer:: Very Important
let g:Tex_ViewRule_pdf = 'zathura'
" TOC settings
let g:vimtex_toc_config = {
      \ 'name' : 'TOC',
      \ 'layers' : ['content', 'todo', 'include'],
      \ 'resize' : 1,
      \ 'split_width' : 50,
      \ 'todo_sorted' : 0,
      \ 'show_help' : 1,
      \ 'show_numbers' : 1,
      \ 'mode' : 2,
      \}

map <Space>ct :VimtexCompile<cr>

" Airline Config 
" let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

" COC Config
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <Space>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <Space>] <Plug>(coc-diagnostic-next)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>

"Tab select completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" c-space confirm completion
inoremap <silent><expr> <c-space> coc#refresh()

" Symbol renaming.
nmap <Space>r <Plug>(coc-rename)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" error markers
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

