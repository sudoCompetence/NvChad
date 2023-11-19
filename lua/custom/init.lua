-- custom init config
local opt = vim.opt
local _ft = vim.api.nvim_create_augroup("FileTypeSettings", { clear = true })

-- base
-- opt.guifont = "Cantarell"
-- opt.updatetime = 300
opt.termguicolors = true
opt.isfname:append("@-@")
opt.swapfile = false
opt.backup = false

-- line config
opt.list = true
opt.listchars:append "space:⋅"
opt.listchars:append "eol:↴"
opt.wrap = false

-- tab config
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- columns
opt.nu = true
opt.relativenumber = true

opt.numberwidth = 4
opt.scrolloff = 9
opt.signcolumn = "yes"

-- vim.o.fillchars = [[eob: ,fold: ,foldopen:⇲,foldsep: ,foldclose:⇱]]
vim.o.fillchars = [[eob: ,fold: ,foldopen:↳,foldsep: ,foldclose:↠]]
vim.o.foldcolumn = "6" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- search config
opt.hlsearch = true
opt.incsearch = true

-- outline
vim.api.nvim_create_autocmd("FileType", {
    pattern = "Outline",
    callback = function()
        vim.wo.signcolumn = "no"
        vim.wo.foldcolumn = "1" -- '0' is not bad
    end,
    group = _ft,
});

-- file navigation
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- copy move down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- copy move up 
vim.keymap.set("n", "J", "mzJ`z") -- cursor center when paste
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- cursor center when jump down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- cursor center when jump up
vim.keymap.set("n", "n", "nzzzv") -- cursor center when searching next
vim.keymap.set("n", "N", "Nzzzv") -- cursor cetner when searching previous
