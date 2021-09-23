call plug#begin('~/.config/nvim/autoload/plugged')
    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    "SmartClose
    Plug 'vim-scripts/vim-smartclose' 
    " Airline
    Plug 'vim-airline/vim-airline'
    " File Explorer
    Plug 'scrooloose/NERDTree' |
                \ Plug 'Xuyuanp/nerdtree-git-plugin' |
                \ Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "Js syntax highlight 
    Plug 'pangloss/vim-javascript'
    "gruvbox theme
    Plug 'morhetz/gruvbox'
    "node js
    Plug 'moll/vim-node'
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " let g:deoplete#enable_at_startup = 1
    " autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    let g:coc_global_extensions = ['coc-clangd', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-rust-analyzer']  

    "ALE linting
    Plug 'dense-analysis/ale'
    let g:ale_linters = {
    \   'javascript': ['eslint'],
    \   'rust': ['rustfmt'],
    \   'cpp':['g++'],
    \}
        "commenting lines
    Plug 'tpope/vim-commentary'
call plug#end()
