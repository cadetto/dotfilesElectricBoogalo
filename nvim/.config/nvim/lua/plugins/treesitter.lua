return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	opts = {
		ensure_installed = {
			'cpp',
			'typescript',
			'javascript',
			'php',
			'lua',
			'python',
		},
		indent = { enable = true },
		highlight = { enable = true },
	},
	config = function(_, opts)
		  require("nvim-treesitter.configs").setup(opts)
	end
}

