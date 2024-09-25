vim.g.mapleader = " "

local keymap = vim.keymap

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })	--split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally"}) --split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })	-- make split windows equal windows
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })	-- clase current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })	-- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })	-- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to the next tab" })	-- go to the next tab
keymap.set("n", "<leader>tp", "<cmd>tabb<CR>", { desc = "Go to the previous tab" })	-- go to previous tab 
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })	

-- vim-tmux-navigator keymaps
keymap.set("n", "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>")
keymap.set("n", "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>")
keymap.set("n", "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>")
keymap.set("n", "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>")
keymap.set("n", "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>")
