local builtin = require('telescope.builtin')

vim.keymap.set('n','<leader>ff' , builtin.find_files,{}) 
vim.keymap.set('n','<leader>fg',  builtin.live_grep,{})
vim.keymap.set('n','<leadrer>fb',builtin.buffers,{})
vim.keymap.set('n','<leader>ht',builtin.help_tags,{})
vim.keymap.set('n','<leader>gc',builtin.git_commits,{})
vim.keymap.set('n','<leader>:',builtin.command_history,{})


