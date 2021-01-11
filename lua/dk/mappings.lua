local map = require('utils').map
vim.g.mapleader = " "

-- local FZF_DEFAULT_OPTS = '--reverse'

-- map.n['<C-p>'] = {'<cmd>FZF' .. FZF_DEFAULT_OPTS .. '<CR>', 'noremap'}
-- map.n['<C-f>'] = {'<cmd>Rg<CR>', 'noremap'}

map.n['<leader>pv'] = {'<cmd>NERDTreeToggle <bar> vertical resize 30<CR>', 'noremap'}

-- vim.g.fzf_layout = {window = {width = 0.8, height = 0.8}}
-- vim.g.fzf_buffers_jump = 1

map.n['<leader>h'] = {'<cmd>wincmd h<CR>', 'noremap'}
map.n['<leader>j'] = {'<cmd>wincmd j<CR>', 'noremap'}
map.n['<leader>k'] = {'<cmd>wincmd k<CR>', 'noremap'}
map.n['<leader>l'] = {'<cmd>wincmd l<CR>', 'noremap'}

map.n['<leader>,'] = {'<cmd>noh<CR>', 'noremap'}

map.n['<leader><CR>'] = {'<cmd>so ~/AppData/Local/nvim/init.vim<CR>', 'noremap'}

map.v['<leader>p'] = {'"_dP<CR>', 'noremap'}
map.v['<leader>y'] = {'"+y<CR>', 'noremap'}
map.n['<leader>p'] = {'"+p<CR>', 'noremap'}

map.n['<leader>y'] = {'"+y<CR>', 'noremap'}
map.n['<leader>Y'] = {'gg"+yG"<CR>', 'noremap'}

--terminal settings
local terminal = 'pwsh' --choose terminal

map.n['<leader>ot'] = {'<cmd>vsplit term://' .. terminal .. '<CR>', 'noremap'}
map.t['<c-[>'] = {'<c-\\><c-n>', 'noremap'}

--telescope
local builtin = '<cmd>lua require("telescope.builtin")'
map.n['<leader>pf'] = {builtin .. '.find_files()<cr>', 'noremap'}
map.n['<leader>pb'] = {builtin .. '.buffers()<cr>', 'noremap'}
map.n['<leader>ph'] = {builtin .. '.help_tags()<cr>', 'noremap'}
map.n['<leader>pr'] = {builtin .. '.grep_string({ search = vim.fn.input("Grep For > ")})<cr>', 'noremap'}
map.n['<leader>pg'] = {builtin .. '.git_files()<cr>', 'noremap'}

