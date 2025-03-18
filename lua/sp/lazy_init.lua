local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



local plugins = {
{'nvim-telescope/telescope.nvim', tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim' }},
-- syntax highlighting
{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
-- quick link files
{"ThePrimeagen/harpoon"},
-- file revision tree
{"mbbill/undotree"},
-- Git stuff
{"tpope/vim-fugitive"},
  -- LSP Support
{'williamboman/mason.nvim'},
{'williamboman/mason-lspconfig.nvim'},
{
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	lazy = true,
	config = false,
},
{
	'neovim/nvim-lspconfig',
	dependencies = {
		{'hrsh7th/cmp-nvim-lsp'},
	}
},
-- Autocompletion
{
	'hrsh7th/nvim-cmp',
	dependencies = {
		{'L3MON4D3/LuaSnip'}
	},
},
{'ThePrimeagen/vim-be-good'}


} -- plugins

require("lazy").setup(plugins)
