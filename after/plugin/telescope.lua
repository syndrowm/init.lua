local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {desc="Find files."})
vim.keymap.set("n", "<C-p>", function()
	if pcall(builtin.git_files) then
		return builtin.git_files
	else
		return builtin.find_files
	end
end, {})

vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, {desc = "Grep for string (prompt)"})
vim.keymap.set("n", "<leader>tg", builtin.grep_string, {desc="Grep for string under cursor"})
