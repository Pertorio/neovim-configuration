return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvim_tree = require("nvim-tree")

		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- optionally enable 24-bit color
		-- vim.opt.termguicolors = true
		
		nvim_tree.setup({
			view = {
				width = 35,
				relativenumber = true,
				},
			-- disable window_picker for
      			-- explorer to work well with
      			-- window splits
      			actions = {
        			open_file = {
          				window_picker = {
            					enable = false,
          						},
        					},
      					},
      				filters = {
        				custom = { ".DS_Store" },
      					},
      				git = {
        				ignore = false,
      				},
    			})	
			
	end
}
