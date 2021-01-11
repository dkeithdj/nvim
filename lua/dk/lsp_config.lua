local lsp = require'lspconfig'
local completion = require'completion'
local othermap = require('utils').map

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local custom_attach = function()
    print("LSP Started.");
    completion.on_attach()

    vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
    map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
    map('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
    map('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
    map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
    map('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
    map('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
    map('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
    map('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
    map('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
    map('n','<leader>ee','<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
    map('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>')
    map('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
    map('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
    map('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')
end

lsp.clangd.setup{
    cmd = {
        "clangd",
        "--background-index",
        "--suggest-missing-includes",
        "--clang-tidy",
        "--header-insertion=iwyu",
    },
    on_attach=custom_attach
}

lsp.vimls.setup{on_attach=custom_attach}

lsp.pyls.setup{on_attach=custom_attach}

--omnisharp
local pid = vim.fn.getpid()
local omnisharp_bin = "C:/Users/DenreiK/gitBuilds/LanguageServers/omnisharp-win-x64/OmniSharp.exe"

vim.g.OmniSharp_server_use_mono = 1
-- vim.g.OmniSharp_server_path = omnisharp_bin

lsp.omnisharp.setup{
  cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
  on_attach=custom_attach
}

--lua
local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

local sumnekoRoot = 'C:/Users/DenreiK/gitBuilds/lua-language-server'
local sumnekoBinary = sumnekoRoot .. '/bin/'.. system_name .. "/lua-language-server.exe"
lsp.sumneko_lua.setup{
    cmd = {sumnekoBinary, "-E", sumnekoRoot .. '/main.lua'};
    settings = {
        Lua = {
            diagnostics = {
                enable = true,
                globals = { "vim" },
            },
        }
    },
    on_attach=custom_attach,
}
vim.g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }
vim.g.completion_confirm_key = ""
vim.g.completion_enable_snippet = 'UltiSnips'
vim.g.completion_sorting = "none"

