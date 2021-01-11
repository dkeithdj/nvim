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

-- if fn.exists('g:airline_symbols') == 1 then
--    g.airline_symbols = {}
-- end
-- g.airline_symbols.branch = ''

g.airline_powerline_fonts = 1
g.airline_left_sep = ''
g.airline_right_sep = ''

g.airline_theme = 'base16_gruvbox_dark_hard'

-- require'colorizer'.setup({'*';},
-- {
-- RGB      = true;         -- #RGB hex codes
-- RRGGBB   = true;         -- #RRGGBB hex codes
-- names    = false;         -- "Name" codes like Blue
-- RRGGBBAA = false;         -- #RRGGBBAA hex codes
-- rgb_fn   = false;         -- CSS rgb() and rgba() functions
-- hsl_fn   = false;         -- CSS hsl() and hsla() functions
-- css      = false;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
-- css_fn   = false;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
-- })
