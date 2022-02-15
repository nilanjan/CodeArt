-- Function for make mapping easier.
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend("force", options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Load lua path
local lua_path = function(name)
  return string.format("require'plugins.%s'", name)
end

additional_plugins = {
  -- You can put your additional plugins here.
  -- Syntax is like normal packer.nvim Syntax.
  -- If you need to set some settings for your plugins
  -- you must put configs in config = function() like below examples

  { "famiu/feline.nvim", branch = "develop" },

    -- LSP
  { 'onsails/lspkind-nvim' },
  { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' },

  -- Treesitter
  { 'p00f/nvim-ts-rainbow', config = lua_path"nvim-ts-rainbow" },
  { 'romgrk/nvim-treesitter-context' },
  { 'SmiteshP/nvim-gps', config = lua_path"nvim-gps" },

    -- Tmux
  { 'christoomey/vim-tmux-navigator' },


  -- Registers & clipboard
  { 'tversteeg/registers.nvim' },
  { 'AckslD/nvim-neoclip.lua', config = lua_path"nvim-neoclip" },

  -- Move & Search & replace
  { 'nacro90/numb.nvim', config = lua_path"numb" },
  { 'dyng/ctrlsf.vim', config = lua_path"ctrlsf" },
  { 'kevinhwang91/nvim-hlslens', config = lua_path"hlslens" },
  { 'ggandor/lightspeed.nvim', config = lua_path"lightspeed" },
  { 'ThePrimeagen/harpoon', config = lua_path"harpoon" },
  { 'chaoren/vim-wordmotion' },
  { 'fedepujol/move.nvim' },

  -- Tags
  { 'ludovicchabant/vim-gutentags', config = lua_path"vim-gutentags" },

  -- DAP
  { 'nvim-telescope/telescope-dap.nvim' },

    -- Syntax
  { 'moll/vim-node' },
  { 'editorconfig/editorconfig-vim', config = lua_path"editorconfig" },
  { 'chrisbra/csv.vim' },
  { 'npxbr/glow.nvim' },
  { 'junegunn/vim-easy-align' },
  { 'mhartington/formatter.nvim', config = lua_path"formatter" },
  { 'zdharma-continuum/zinit-vim-syntax' },
  { 'rust-lang/rust.vim' },

    -- Icons
  { 'ryanoasis/vim-devicons' },

  -- Color
  { 'lpinilla/vim-codepainter' },

  -- Git
  { 'kdheepak/lazygit.nvim' },
  { 'rhysd/committia.vim' },

-- Telescope
  { 'nvim-lua/popup.nvim' },
  { 'nvim-telescope/telescope-project.nvim' },
  { 'pwntester/octo.nvim', config = lua_path"octo" },

  -- General Plugins
  { 'rcarriga/nvim-notify', config = lua_path"nvim-notify" },
  { 'airblade/vim-rooter', config = lua_path"vim-rooter" },
  { 'mhinz/vim-startify' },
  { 'goolord/alpha-nvim', config = lua_path"alpha-nvim" },
  { 'jeffkreeftmeijer/vim-numbertoggle' },
  { 'lambdalisue/suda.vim' },
  { 'numtostr/FTerm.nvim', config = lua_path"fterm" },
  { 'wfxr/minimap.vim', config = lua_path"minimap" },
  { 'luukvbaal/stabilize.nvim', config = lua_path"stabilize" },
  { "beauwilliams/focus.nvim", config = lua_path"focus" },

  -- "mhartington/formatter.nvim",

  -- { crispgm/nvim-go", ft = "go" },

  --[[{
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    config = function ()
      vim.g.mkdp_auto_close = 0
    end
  },

  {
    "andweeb/presence.nvim",
    config = function ()
      require("presence"):setup({
      log_level           = "info", -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
      debounce_timeout    = 5,   -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
      blacklist           = {},  -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
      })
    end
  }]]
}

-- Other settings here
-- For examples for disabling line number:
-- vim.opt.number = false
-- vim.opt.relativenumber = false


-- Or for changing terminal toggle mapping:
-- first argument is mode of mapping. second argument is keymap.
-- third argument is command. and last argument is optional argument like {expr = true}.
-- map("n", "<C-t>", ":ToggleTerm<CR>")
-- map("t", "<C-t>", ":ToggleTerm<CR>")

user_lualine_style = 1 -- You can choose between 1, 2, 3, 4 and 5
user_indent_blankline_style = 1 -- You can choose between 1, 2, 3, 4,5 and 6

vim.g.tokyonight_style = "strom"
vim.cmd("colorscheme tokyonight")
vim.cmd("autocmd FileType lua set tabstop=2")
vim.cmd("autocmd Filetype lua set shiftwidth=2")
