call plug#begin()
"
" For moving fast as fuck boi
" 
Plug 'ggandor/lightspeed.nvim'

"
" Language support / Language servers
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'rhysd/vim-clang-format'
"
" Aesthetics - Main
" 
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'
" Toolbar for vim
Plug 'vim-airline/vim-airline'

"
" Functionalities
" 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"
" Languages and Syntax
"
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'codechips/coc-svelte', {'do' : 'npm install'}
Plug 'prettier/vim-prettier', {'do' : 'npm install'}

let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
au BufWritePre *.css, *.svelte, *.html, *.ts, *.js, *.scss PrettierAsync
call plug#end()
