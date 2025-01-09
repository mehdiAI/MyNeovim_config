require("core.vimops")
require("config.lazy")
require("core.keymaps")

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")

vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")
