"----- leader key --------------------
"--------------------------------------
" syntax on
" set relativenumber
" set number
" set noerrorbells

" set tabstop=2 softtabstop=2
" set shiftwidth=2
" set expandtab
" set smartindent
" set nu
" set nowrap
" set smartcase
" set noswapfile
" set nobackup
" set undodir=~/Appdata/Local/nvim/undodir
" set undofile
" set completeopt=menuone,noinsert,noselect
" set incsearch
" set termguicolors
" set signcolumn=yes
" set pumheight=10
" set showtabline=2
" set noshowmode
" set formatoptions-=or
" set shortmess+=c

" set splitbelow
" set splitright

" Give more space for messages
" set cmdheight=2

" speedup updatetime
" set updatetime=50

" highlight ColorColum
" ctermbg=0
" guibg=LightGray
" set colorcolumn=80


"call plug#begin('~/AppData/Local/nvim/plugged')

""lsp plugins
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
"" Plug 'nvim-lua/diagnostic-nvim'
"" Plug 'tjdevries/nlua.nvim'
"" Plug 'tjdevries/lsp_extensions.nvim'

"" Better Syntax Support
"" Plug 'sheerun/vim-polyglot'
"Plug 'omnisharp/omnisharp-vim'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

""Tree sitter
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'nvim-treesitter/playground'

"" File Explorer
"Plug 'scrooloose/NERDTree'
"Plug 'ryanoasis/vim-devicons'

"" Auto pairs for '(' '[' '{'
"Plug 'jiangmiao/auto-pairs'
"" Plug 'tpope/vim-endwise'
"Plug 'rstacruz/vim-closer'

"" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'vim-utils/vim-man'
"Plug 'tpope/vim-fugitive'
"" Plug 'tpope/vim-dispatch'

"Plug 'mbbill/undotree'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

"Plug 'easymotion/vim-easymotion'
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-commentary'

"Plug 'morhetz/gruvbox'
"" Plug 'lifepillar/vim-gruvbox8'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'norcalli/nvim-colorizer.lua'
"Plug 'octol/vim-cpp-enhanced-highlight'

"call plug#end()

"----- setting colors and themes -------------
" let g:gruvbox_invert_selection=1
" let g:gruvbox_termcolors = 256
" colorscheme gruvbox8_hard
" colorscheme gruvbox

" enable tabline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif


" let g:airline_symbols.branch = ''
" let g:airline_powerline_fonts = 1
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''

" Switch to your current theme
" let g:airline_theme = 'base16_gruvbox_dark_hard'
" let g:airline#extensions#coc#enabled = 0

" colorizer
" lua << EOF
" require'colorizer'.setup({'*';},
" {
" RGB      = true;         -- #RGB hex codes
" RRGGBB   = true;         -- #RRGGBB hex codes
" names    = false;         -- "Name" codes like Blue
" RRGGBBAA = false;         -- #RRGGBBAA hex codes
" rgb_fn   = false;         -- CSS rgb() and rgba() functions
" hsl_fn   = false;         -- CSS hsl() and hsla() functions
" css      = false;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
" css_fn   = false;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
" })
" EOF

"---------------------------------------------
" Disable Python2 support
" let g:loaded_python_provider=0
" let g:loaded_ruby_provider=0
" let g:loaded_perl_provider=0

" let g:python3_host_prog = ('~\Envs\nvimpy3\Scripts\python.exe')
" let g:python_host_prog = ('~\scoop\apps\python27\current\python.exe')

"------ window settings ------------------------
" let g:netrw_browse_split = 2
" let g:netrw_banner = 0
" let g:netrw_winsize = 25

" if executable('rg')
"   let g:rg_derive_root='true'
" endif

" let g:fzf_layexe = { 'window': { 'width': 0.8, 'height': 0.8 } }
" let $FZF_DEFAULT_OPTS='--reverse'
" let g:fzf_action = {
      " \ 'ctrl-t': 'tab split',
      " \ 'ctrl-h': 'split',
      " \ 'ctrl-s': 'vsplit'
      " \}
" let $FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{**/node_modules/**,.git/*,**/*.pem}"'

"------- hotkey/remapping settings --------------
" nnoremap <C-p> :FZF<CR>
" nnoremap <C-f> :Rg<CR>
" nnoremap <leader>pv :NERDTreeToggle <bar> :vertical resize 30<CR>

" nnoremap <leader>h :wincmd h<CR>
" nnoremap <leader>j :wincmd j<CR>
" nnoremap <leader>k :wincmd k<CR>
" noremap <leader>l :wincmd l<CR>

" nnoremap <leader>, :nohlsearch<CR>

" nnoremap <Leader><CR> :so ~/AppData/Local/nvim/init.vim<CR>

" this does not work in a luaconfig
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv

" vnoremap <leader>p "_dP
" nnoremap <leader>y "+y
" vnoremap <leader>y "+y
" nnoremap <leader>Y gg"+yG
"-----------------------------------------------
lua require('dk.opt')
lua require('dk.lsp_config')
lua require('dk.disp')
lua require('dk.mappings')
lua require('dk.packages')

command! Scratch lua require'tools'.printWindowSize()
"-------- Terminal settings ------------------

" function! OpenTerminal()
"   vsplit term://pwsh
" endfunction

" nnoremap <leader>ot :call OpenTerminal()<CR>
" tnoremap <c-[> <c-\><c-n>
"---------------------------------------------
" someSTuff

" augroup highlight_yank
"   autocmd!
"   autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeexe = 40})
" augroup END
