-- neo-tree
vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>", {})
--NvimTree
--vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {})
--vim.keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>", {})

-- oil.nvim , open Parent directory of then file.
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- telescope
local tbuilt = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", tbuilt.find_files, { desc = "Telescope find files" })
-- vim.keymap.set("n", "<leader>fg", tbuilt.live_grep, { desc = "Telescope live grep" })

---- debugging
--local dap = require('dap')
--vim.keymap.set("n", "<F2>", function() dap.step_into() end, { desc = "Debugger step into" })
--vim.keymap.set("n", "<F3>", function() dap.step_over() end, { desc = "Debugger step over" })
--vim.keymap.set("n", "<F4>", function() dap.step_out() end, { desc = "Debugger step out" })
--vim.keymap.set("n", "<F5>", function() dap.continue() end, { desc = "Debugger continue" })
--vim.keymap.set("n", "<Leader>b", function() dap.toggle_breakpoint() end, { desc = "Debugger toggle breakpoint" })
--vim.keymap.set("n", "<F6>", function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end,
--  { desc = "Debugger set conditional breakpoint" })
--vim.keymap.set("n", "<F7>", function() dap.terminate() end, { desc = "Debugger reset" })
--vim.keymap.set("n", "<F8>", function() dap.run_last() end, { desc = "Debugger run last" })

---- Rustaceanvim
--vim.keymap.set("n", "<leader>rdt", "<cmd>'RustLsp testables'<CR>", { desc = "Debugger testables" })


---- bufferline
--vim.keymap.set("n", "<leader>bs", "<Cmd>BufferLinePick<CR>", { silent = true })
--vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", { silent = true })
--vim.keymap.set("n", "<Tab>p", "<Cmd>BufferLineCyclePrev<CR>", { silent = true })
--vim.keymap.set("n", "<leader>bl", "<Cmd>BufferLineMovePrev<CR>", { silent = true })
--vim.keymap.set("n", "<leader>br", "<Cmd>BufferLineMoveNext<CR>", { silent = true })
--vim.keymap.set("n", "<leader>bx", "<Cmd>BufferLinePickClose<CR>", { silent = true })
--vim.keymap.set("n", "<leader>bxa", "<Cmd>BufferLineCloseOthers<CR>", { silent = true })

-- Comments
vim.keymap.set("n", "<C-_>", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Toggle single-line comment" })

vim.keymap.set(
  "v",
  "<C-_>",
  "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { desc = "Toggle multi-line comment" }
)

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<space>f", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, { desc = "Show signature help" })

---- Todo comment
--vim.keymap.set("n", "<leader>tt", "<cmd>TodoTelescope<cr>")
--vim.keymap.set("n", "<leader>tl", "<cmd>TodoLocList<cr>")

-- Git
--vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>")
--vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<cr>")
--vim.keymap.set("n", "<leader>gl", "<cmd>Git log --oneline --graph --decorate --all<cr>")
--
---- UndoTree
--vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>")

---- Persisted
--vim.keymap.set("n", "<leader>ss", ":SessionSave<CR>", { desc = "Save Session" })
--vim.keymap.set("n", "<leader>sd", ":SessionDelete<CR>", { desc = "Delete Session" })
--vim.keymap.set("n", "<leader>sl", ":Telescope persisted<CR>", { desc = "Delete Session" })
--
---- CodeSnap
--vim.keymap.set("x", "<leader>cc", ":CodeSnap<CR>", { desc = "Save to clipboard." })
--vim.keymap.set("x", "<leader>cs", ":CodeSnapSave<CR>", { desc = "Save to directory." })
--
---- toggleterminal
--vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode." })
--vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Open terminal below." })
--vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Open a floting terminal." })
--vim.keymap.set("n", "<leader>tst", ":ToggleTermSendCurrentLine<CR>", { desc = "Send current line to terminal." })

-- Key mappings for tabs
-- vim.api.nvim_set_keymap('n', '<Leader>tn', ':tabnew<CR>', { noremap = true, silent = true })      -- Open a new tab
-- vim.api.nvim_set_keymap('n', '<Leader>tc', ':tabclose<CR>', { noremap = true, silent = true })    -- Close the current tab
-- vim.api.nvim_set_keymap('n', '<Leader>tcc', ':tabonly<CR>', { noremap = true, silent = true })    -- Close all other tabs
-- vim.api.nvim_set_keymap('n', '<Leader>tk', ':tabnext<CR>', { noremap = true, silent = true })     -- Go to the next tab
-- vim.api.nvim_set_keymap('n', '<Leader>tj', ':tabprevious<CR>', { noremap = true, silent = true }) -- Go to the previous tab

---- ufo
--local ufo = require("ufo")
--vim.keymap.set('n', 'zR', ufo.openAllFolds)
--vim.keymap.set('n', 'zM', ufo.closeAllFolds)

-- noice
vim.keymap.set("n", "<leader>nd", ":NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })
vim.keymap.set("n", "<leader>nl", ":Telescope noice<CR>", { desc = "List All Noice Messages" })

---- tabular (csv view)
--vim.keymap.set("n", "<leader>csv", ":Tabularize /,<CR>", { desc = "Tabularize by comma" })
--vim.keymap.set("n", "<leader>tsv", ":Tabularize /\\t/<CR>", { desc = "Tabularize by tab" })
--
---- Prettify json with python
--vim.keymap.set("n", "<leader>jp", ":%!python -m json.tool<CR><CR>", { desc = "Prettify JSON with Python" })
--
---- python venv selector
--vim.keymap.set("n", "<leader>vs", "<cmd>VenvSelect<cr>", { desc = "Open python venv selector." })
--vim.keymap.set("n", "<leader>vc", "<cmd>VenvSelectCached<cr>", { desc = "Select previously used venv for this project." })

-- ### Customize vim

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- paste from clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set("n", "<Esc>", ":nohlsearch<cr>")
vim.keymap.set("i", "jj", "<Esc>")
