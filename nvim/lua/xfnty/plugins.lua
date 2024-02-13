local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath, })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local ts = require("telescope.builtin")
			vim.keymap.set("n", "<C-f>", ts.find_files, {})
		end
	},
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", },
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = true,
			})
			vim.cmd.colorscheme("tokyonight")
		end,
	},
	{ 
		"nvim-treesitter/nvim-treesitter",
		cmd = "TSUpdate",
		config = function() 
			require("nvim-treesitter.configs").setup({
				-- https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
				ensure_installed = { "bash", "nasm", "asm", "c", "cpp", "cmake", "python", "toml" },
				highlight = { enable = true, },
			})
		end
	},
	{
		"theprimeagen/harpoon",
		config = function()
			local mark = require("harpoon.mark")
			local ui = require("harpoon.ui")
			vim.keymap.set("n", "<M-a>", mark.add_file)				-- Add
			vim.keymap.set("n", "<M-s>", ui.toggle_quick_menu)		-- Show (quick menu)
			vim.keymap.set("n", "<M-q>", ui.nav_prev)		-- Show (quick menu)
			vim.keymap.set("n", "<M-e>", ui.nav_next)		-- Show (quick menu)
			vim.keymap.set("n", "<M-1>", function() ui.nav_file(1) end)	-- Jump to Alt-N
			vim.keymap.set("n", "<M-2>", function() ui.nav_file(2) end)	-- Jump to Alt-N
			vim.keymap.set("n", "<M-3>", function() ui.nav_file(3) end)	-- Jump to Alt-N
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lsp = require("lspconfig")
			lsp.clangd.setup({})
			-- lsp.lua_ls.setup({})
			lsp.pylsp.setup({})
		end
	},
})

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })


require("telescope").load_extension("fzf")
require("telescope").load_extension('harpoon')

