" Set Leader Key
let mapleader = " "

" General Settings
set relativenumber                     " Show relative line numbers
set number                             " Show absolute line number on the current line
set tabstop=4                          " Set tab width to 4 spaces
set modifiable                         " Allow file modification
set clipboard+=unnamedplus             " Use system clipboard
set encoding=utf-8                     " Use UTF-8 encoding
set mouse=a                            " Enable mouse support
set smarttab                    " Insert spaces according to tabstop
set autoindent                  " Copy indent from the current line Center the cursor after scrolling down or up
set smartindent                 " Automatically insert indent in some cases

set ignorecase                  " Ignore case when searching
set smartcase                   " Override ignorecase if search has uppercase
set incsearch                   " Show search matches as you type
set hlsearch                    " Highlight search results


set laststatus=2                " Always show the status line


nnoremap <C-d> <C-d>zz
set nobackup                    " Disable backup files
set nowritebackup               " Disable write backup files
set noswapfile                  " Disable swap files

set showmatch


nnoremap <C-u> <C-u>zz

" Center the cursor after searching forward or backward
nnoremap n nzzzv
nnoremap N Nzzzv

" Paste over a selection without overwriting the clipboard
xnoremap <leader>p "_dP

" Yank to the system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Navigate the quickfix list while centering the cursor
nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz

" Navigate the location list while centering the cursor
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

" Search and replace the word under the cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Window switching
nnoremap <leader>w <C-w>w


"Status line for battery percentage
let g:battery#update_statusline = 1 " For statusline.

" Vim Plugins
call plug#begin()

" Plugin List
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'preservim/nerdtree'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'lambdalisue/battery.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'lambdalisue/battery.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'bing6000s/asyncomplete.vim'
call plug#end()

" Telescope Keybindings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Color Scheme
colorscheme wildcharm


" Asyncomplete: {{{
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
" }}}
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"



" Omnisharp Configuration
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_info = '·'
let g:ale_sign_style_error = '·'
let g:ale_sign_style_warning = '·'
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:OmniSharp_selector_ui = 'fzf'    " Use fzf
let g:OmniSharp_selector_findusages = 'fzf'
let g:OmniSharp_highlight_groups = {
\ 'Comment': 'NonText',
\ 'XmlDocCommentName': 'Identifier',
\ 'XmlDocCommentText': 'NonText'
\}

let g:OmniSharp_popup_options = {
\ 'winblend': 30,
\ 'winhl': 'Normal:Normal,FloatBorder:Special',
\ 'border': 'rounded'
\}

augroup omnisharp_commands
  autocmd!

  " Show type information automatically when cursor stops moving
  autocmd CursorHold *.cs OmniSharpTypeLookup

  " Contextual commands for C# files
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
  autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
augroup END

