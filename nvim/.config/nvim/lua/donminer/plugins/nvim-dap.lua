return {
	"mfussenegger/nvim-dap",
	vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>"),
	vim.keymap.set("n", "<leader>dr", ":DapContinue<CR>"),
}
