local o = vim.o
local g = vim.g
local bo = vim.bo
local wo = vim.wo
local fn = vim.fn

o.termguicolors = true

g.gruvbox_invert_selection = 1
g.gruvbox_termcolors = 256

vim.cmd('colorscheme gruvbox')
-- vim.cmd('colorscheme gruvbox_hard')

g['airline#extensions#tabline#enabled'] = 1
g['airline#extensions#tabline#left_sep' ] = ' '
g['airline#extensions#tabline#left_alt_sep' ] = ''
g['airline#extensions#tabline#right_sep' ] = ''
g['airline#extensions#tabline#right_alt_sep' ] = ''

g.airline_powerline_fonts = 1
g.airline_left_sep = ''
g.airline_right_sep = ''

g.airline_theme = 'base16_gruvbox_dark_hard'

