-- autocmd BufNewFile *.py 0r ~/.vim/skeleton/skeleton.py | norm G
-- autocmd BufNewFile *.c 0r ~/.vim/skeleton/skeleton.c | norm G
-- autocmd BufNewFIle *.sh 0r ~/.vim/skeleton/skeleton.sh | norm G
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.py",
  command = "0r ~/.config/nvim/skeleton/skeleton.py"
})
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.c",
  command = "0r ~/.config/nvim/skeleton/skeleton.c"
})
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.sh",
  command = "0r ~/.config/nvim/skeleton/skeleton.sh"
})
