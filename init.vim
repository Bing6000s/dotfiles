let mapleader = " "
set relativenumber
"Mouse is really nice in visual mode
set mouse=a 
set tabstop=4
set modifiable
set clipboard+=unnamedplus
set encoding=utf-8
set number

"Vim Plug-ins
call plug#begin()
" List your plugins here
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
		Plug 'nvim-lua/plenary.nvim'
		Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
		Plug 'ThePrimeagen/harpoon'
		Plug 'nvim-lua/plenary.nvim'
		Plug 'preservim/nerdtree'
		Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
		Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'lambdalisue/battery.vim'
		Plug 'lambdalisue/wifi.vim'
call plug#end()

"VimAirline config
let g:airline#extensions#tabline#enabled = 1
"VimAirline with battery status
let g:airline#extensions#battery#enabled=1
let g:airline#update_statusline=1
let g:wifi#update_tabline=1
let g:wifi#update_statusline=1


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Color schemes
colorscheme wildcharm

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
 
"NerdTree
"toggle nerdtree by space n
nnoremap <leader>n :NERDTreeToggle<CR>


"Remaps
"Switching windows is space w
nnoremap <leader>w <C-w>w

"COC LSP
"Tab to cycle between suggested output, then space to the next word
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
nnoremap <leader>n :NERDTreeToggle<CR>

