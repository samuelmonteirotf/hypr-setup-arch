local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Básico
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>h", ":bprevious<CR>", opts)
map("n", "<leader>l", ":bnext<CR>", opts)

-- LSP
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "gr", vim.lsp.buf.references, opts)
map("n", "<leader>rn", vim.lsp.buf.rename, opts)

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)

-- Split windows
map("n", "<leader>sv", ":vsplit<CR>", opts)
map("n", "<leader>sh", ":split<CR>", opts)

-- Explorer rápido
map("n", "<leader>e", ":Ex<CR>", opts)

