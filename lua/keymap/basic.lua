local u = require("keymap.utils")
local map, opt = u.map, u.opt

local ot = opt():Nore()

vim.g.mapleader = "z"
vim.g.localmapleader = "z"

-- look up all map of one key
map("c", "cm", "verbose map", ot)

map("n", "qq", ":q!<CR>", ot)
map("n", "Q", ":qa!<CR>", ot)

map("n", "<space>", "viw", ot)
map("n", "vv", "0v$h", ot)
map("n", "Y", "0", ot)
map("n", "O", "$", ot)
map("n", "N", "5j", ot)
map("n", "E", "5k", ot)
map("v", "<", "<gv", ot)
map("v", ">", ">gv", ot)
map("v", "N", ":move '>+1<CR>gv-gv", ot)
map("v", "E", ":move '<-2<CR>gv-gv", ot)

map("n", "<tab>", ":bn<CR>", opt():Nore():Silent())
map("n", "<S-tab>", ":bp<CR>", opt():Nore():Silent())

map("n", "s", "", ot)
map("n", "sv", ":vsp<CR>", ot)
map("n", "sh", ":sp<CR>", ot)
map("n", "sc", "<C-w>c", ot)
map("n", "so", "<C-w>o", ot)

map("n", "<A-y>", "<C-w>h", ot)
map("n", "<A-n>", "<C-w>j", ot)
map("n", "<A-e>", "<C-w>k", ot)
map("n", "<A-o>", "<C-w>l", ot)
map("t", "<A-y>", [[ <C-\><C-N><C-w>h ]], ot)
map("t", "<A-n>", [[ <C-\><C-N><C-w>j ]], ot)
map("t", "<A-e>", [[ <C-\><C-N><C-w>k ]], ot)
map("t", "<A-o>", [[ <C-\><C-N><C-w>l ]], ot)

map("n", "<A-S-y>", ":vertical resize -2<CR>", ot)
map("n", "<A-S-o>", ":vertical resize +2<CR>", ot)
map("n", "<A-S-e>", ":resize -2<CR>", ot)
map("n", "<A-S-n>", ":resize +2<CR>", ot)
map("n", "s=", "<C-w>=", ot)

map("n", "<leader>t", ":sp<CR><C-w>j:terminal<CR>", ot)
map("n", "<leader>vt", ":vsp | terminal<CR>", ot)
map("t", "<Esc>", "<C-\\><C-n>", ot)

-- package
map("c", "ps", "PackerSync", ot)
map("c", "pc", "PackerCompile", ot)
