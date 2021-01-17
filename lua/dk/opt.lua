--treesitter settings
require 'nvim-treesitter.install'.compilers = { "clang" }
local ts = require 'nvim-treesitter.configs'
ts.setup {
  ensure_installed = {"cpp", "python","lua", "c_sharp", "html", "css"},
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
vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank {timeout = 200}')
vim.cmd([[autocmd BufWritePre * %s/\s\+$//e]])
vim.cmd([[ autocmd FileType cpp setlocal commentstring=//\ %s ]])
