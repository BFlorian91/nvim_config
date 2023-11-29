-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "j", "k", { noremap = true })
keymap.set("n", "k", "j", { noremap = true })

keymap.set("v", "j", "k", { noremap = true })
keymap.set("v", "k", "j", { noremap = true })

-- Quick close
keymap.set("n", "<leader>qq", ":q<CR>", opts)

-- Quick save
keymap.set("n", "<leader>ww", ":w<CR>", opts)

-- Increment / Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
-- keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "ga", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit<CR>", opts)
keymap.set("n", "tc", ":tabclose<CR>", opts)
keymap.set("n", "<tab>", ":tabnext<CR>", opts)
keymap.set("n", "<S-tab>", ":tabprevious<CR>", opts)

-- Split windows
keymap.set("n", "ss", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)
keymap.set("n", "st", ":vsplit | terminal<CR>", opts)

-- Move Windows
keymap.set("n", "<leader>tj", ":wincmd K<CR>", opts)
keymap.set("n", "<leader>tk", ":wincmd J<CR>", opts)
keymap.set("n", "<leader>th", ":wincmd H<CR>", opts)
keymap.set("n", "<leader>tl", ":wincmd L<CR>", opts)

-- Close windows
local close_windows = require("util.close_windows")
keymap.set("n", "<leader>lq", close_windows.close_left_window, opts)
keymap.set("n", "<leader>rq", close_windows.close_right_window, opts)
keymap.set("n", "<leader>tq", close_windows.close_top_window, opts)
keymap.set("n", "<leader>bq", close_windows.close_bottom_window, opts)

--Move windows
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sj", "<C-w>k", opts)
keymap.set("n", "sk", "<C-w>j", opts)
keymap.set("n", "sl", "<C-w>l", opts)

-- Resize windows
keymap.set("n", "<C-h>", "<C-w><", opts)
keymap.set("n", "<C-l>", "<C-w>>", opts)
keymap.set("n", "<C-j>", "<C-w>+", opts)
keymap.set("n", "<C-k>", "<C-w>-", opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Search Telescope
keymap.set("n", "sf", ":Telescope find_files<CR>", opts)

-- rename word
keymap.set("n", "<leader>rn", ":IncRename ")

-- Layout Terminal
-- Dans keymap.lua
local layout_terms = require("util.layout_terms")
keymap.set("n", "<leader>tt", layout_terms.OpenWindowWithTerminals, { noremap = true, silent = true })
