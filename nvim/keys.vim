""" Set <Space> to be the leader key
let mapleader = "\<Space>"

""" Use <space> + w for quickly saving the file
nnoremap <Leader>w :w<CR>

""" Use j+k simultaneously to exit insert mode
inoremap jk <ESC>
inoremap <ESC> <NOP>

""" Moving lines up or down using Alt + j / k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


nmap <leader>q :NERDTreeToggle<CR>
nmap \\ <leader>q
nmap <leader>s :Rg<CR>
nmap <leader>d :Files<CR>
nmap <leader>f :BLines<CR>

"
" COC Mapping; Support for language server
"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" GoTo diagnostics
nmap <A-C-h> <Plug>(coc-diagnostic-prev)
nmap <A-C-l> <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <F6> :NERDTreeToggle<CR>

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>,  <Plug>(coc-codeaction-selected)
nmap <leader>,  <Plug>(coc-codeaction-selected)

" Run the Code Lens action on the current line.
nmap <leader>cl <Plug>(coc-codelens-action)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <C>, :<C-u>CocList diagnostics<cr>

" Ctrl+h to stop searching
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>
" Suspend with Ctrl+f
inoremap <C-f> :sus<cr>
vnoremap <C-f> :sus<cr>
nnoremap <C-f> :sus<cr>

" Jump to start and end of line using the home row keys
map H ^
map L $

" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>

" Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Follow Rust code style rules
au Filetype rust source ~/.config/nvim/scripts/spacetab.vim
au Filetype rust set colorcolumn=100
