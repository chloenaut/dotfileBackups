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
    "Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
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
    "Tex
    Plug 'lervag/vimtex'
    "blankline
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'Pocco81/AutoSave.nvim'
    " Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    " let g:deoplete#enable_at_startup = 1
    " autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    let g:coc_global_extensions = ['coc-clangd', 'coc-tsserver', 'coc-css', 'coc-jedi', 'coc-eslint', 'coc-html', 'coc-json', 'coc-rust-analyzer', 'coc-vimtex']  
    
    " Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

    "ALE linting
    " Plug 'dense-analysis/ale'
    " let g:ale_linters = {
    " \   'javascript': ['eslint'],
    " \   'rust': ['rustfmt'],
    " \   'cpp':['g++'],
    " \}
        "commenting lines
    Plug 'tpope/vim-commentary'
call plug#end()

