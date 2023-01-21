-- autocmd BufNewFile *.py 0r ~/.vim/skeleton/skeleton.py | norm G
-- autocmd BufNewFile *.c 0r ~/.vim/skeleton/skeleton.c | norm G
-- autocmd BufNewFIle *.sh 0r ~/.vim/skeleton/skeleton.sh | norm G
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.py",
  group = vim.api.nvim_create_augroup("create_skeletons", { clear = true }),
  command = "0r ~/.config/nvim/skeleton/skeleton.py"
})
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.c",
  group = vim.api.nvim_create_augroup("create_skeletons", { clear = true }),
  command = "0r ~/.config/nvim/skeleton/skeleton.c"
})
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.sh",
  group = vim.api.nvim_create_augroup("create_skeletons", { clear = true }),
  command = "0r ~/.config/nvim/skeleton/skeleton.sh"
})
