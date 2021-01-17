vim.cmd [[packadd packer.nvim]]

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(
function(use)

  use {'wbthomason/packer.nvim', opt = true}

  --lsp plugins
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'omnisharp/omnisharp-vim'
  -- use 'tjdevries/nlua.nvim'
  -- use 'tjdevries/lsp_extensions.nvim'
  -- use 'neoclide/coc.nvim', {'branch': 'release'}

  -- use 'SirVer/ultisnips'
  -- use 'honza/vim-snippets'
  use 'norcalli/snippets.nvim'

  --Tree sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() vim.cmd [[TSUpdate]] end,
    requires = {
      {'nvim-treesitter/nvim-treesitter-refactor', opt = true},
      {'nvim-treesitter/nvim-treesitter-textobjects', opt = true},
      {'nvim-treesitter/playground'},
      {'romgrk/nvim-treesitter-context', opt = true},
    },
  }

  -- File Explorer
  use 'scrooloose/NERDTree'
  use 'ryanoasis/vim-devicons'

  -- Auto pairs for '(' '[' '{'
  use 'rstacruz/vim-closer'

  use 'vim-utils/vim-man'
  use 'tpope/vim-fugitive'
  -- use 'tpope/vim-dispatch'

  use 'mbbill/undotree'

  use {'junegunn/fzf', run = './install --all' }
  use {'junegunn/fzf.vim'}

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use 'easymotion/vim-easymotion'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'

  use 'gruvbox-community/gruvbox'
  -- use 'lifepillar/vim-gruvbox-17'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'octol/vim-cpp-enhanced-highlight'

  use {
    'norcalli/nvim-colorizer.lua',
    config = function()

      require'colorizer'.setup({'*';},
      {
        RGB      = true;         -- #RGB hex codes
        RRGGBB   = true;         -- #RRGGBB hex codes
        names    = false;         -- "Name" codes like Blue
        RRGGBBAA = false;         -- #RRGGBBAA hex codes
        rgb_fn   = false;         -- CSS rgb() and rgba() functions
        hsl_fn   = false;         -- CSS hsl() and hsla() functions
        css      = false;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn   = false;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end
  }

end
)

-- return packer
