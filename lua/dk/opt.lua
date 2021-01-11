local bo = vim.bo
local wo = vim.wo
local o = vim.o
local g = vim.g

wo.relativenumber = true
wo.number = true
wo.wrap = false
wo.number = true
wo.colorcolumn = '80'
-- vim.api.nvim_command('highlight ColorColum ctermbg=0 guibg=Black')

o.swapfile = false
bo.swapfile = false
o.backup = false
o.undodir = 'C:/Users/DenreiK/Appdata/Local/nvim-data/undodir'
o.undofile = true
bo.undofile = true

o.smartcase = true
o.completeopt = "menuone,noinsert,noselect"
o.incsearch = true
o.hidden = true
o.termguicolors = true


o.errorbells = false
o.pumheight = 10
o.pumblend = 10
o.smartindent = true
o.signcolumn = 'yes'
-- vim.cmd( 'set formatoptions-=or' )
-- o.formatoptions = 'o, r'
o.scrolloff = 10
o.shortmess = o.shortmess .. 'c'
o.showmode = false

o.splitright = true
o.splitbelow = true

o.cmdheight = 2
o.updatetime = 50
-- o.wildmode = 'longest', 'list', 'full'
-- o.wildmode = o.wildmode - 'list'

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.autoindent = true
bo.autoindent = true
o.expandtab = true
bo.expandtab = true

--provider ENABLED
g.python3_host_prog='~/Envs/nvimpy3/Scripts/python.exe'

--providers DISABLED
g.loaded_python_provider = 0
g.loaded_ruby_provider = 0
g.loaded_perl_provider = 0

--highlightings
g.Omnisharp_highlighting = 3
g.cpp_class_scope_highlight = 1
g.cpp_member_variable_highlight = 1
g.cpp_class_decl_highlight = 1


--treesitter settings
require 'nvim-treesitter.install'.compilers = { "clang" }
local ts = require 'nvim-treesitter.configs'
ts.setup {
  ensure_installed = {"cpp", "python","lua", "c_sharp"},
  highlight = {enable = true}
}

-- telescope plugin
require('telescope').setup {
  defaults = {
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  }
}
--commands
vim.cmd('autocmd TextYankPost * lua vim.highlight.on_yank {timeout = 100}')
vim.cmd([[autocmd BufWritePre * %s/\s\+$//e]])
