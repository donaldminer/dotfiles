vim.g.mapleader = " "
vim.g.maplocalleader = ","
local keymap = vim.keymap

-- Exit Insert Mode Example
--keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search Highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment Number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement Number" })

-- Split Window Control
keymap.set("n", "<leader>sv", "<C-w>v>", { desc = "Split Window Vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "<Make Split Windows Equal Size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split Window" })

-- Tab Control
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open New Tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go To Next Tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go To Previous Tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open Current Buffer in New Tab" })
