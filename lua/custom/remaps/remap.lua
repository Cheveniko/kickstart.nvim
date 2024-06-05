-- Go to vim file mode
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Creo que el incremental search está activo sin necesidad de este comando
vim.opt.incsearch = true

-- Tab size
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

--Equivalent to alt + up or down in vs code
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Append bottom line to current line and cursor stays on original place
vim.keymap.set('n', 'J', 'mzJ`z')

-- Center screen and keep cursor on center
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Keep cursor on the middle on search
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Delete highlighted buffer on to the void and paste
vim.keymap.set('x', '<leader>p', '"_dP')

-- Copy to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

-- Delete highlighted burffer on to the void
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- Quickfix navigation
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

-- Open new tab
vim.keymap.set('n', '<C-n>', vim.cmd.tabnew)

-- Open terminal on new tab
vim.keymap.set('n', '<C-t>', function()
  vim.cmd.tabnew()
  vim.cmd.terminal()
end)

-- Fugitive
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

-- Jump to previous file
vim.keymap.set('n', '<C-g>', '<C-^>')
