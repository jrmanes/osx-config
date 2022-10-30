local keymap = function(mode, shortcut, command) 
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

------------------------------------------------------------------
vim.g.mapleader = ' '
------------------------------------------------------------------
keymap('n', '<leader>w', ':w<cr>')
keymap('n', '<leader>pv', ':Ex<cr>')

------------------------------------------------------------------
keymap('n', '<leader>tv', ':botright vnew <Bar> :terminal<cr>')
keymap('n', '<leader>th', ':botright new <Bar> :terminal<cr>')
keymap('t', '<Esc>', '<C-\\><C-n>')

------------------------------------------------------------------
keymap('n', '<C-j>', '<C-W>j')
keymap('n', '<C-k>', '<C-W>k')
keymap('n', '<C-h>', '<C-W>h')
keymap('n', '<C-l>', '<C-W>l')

------------------------------------------------------------------
-- NERDTree
-- keymap('n', '<leader>d', ':NvimTreeToggle<cr>')
keymap('n', '<leader>n', ':NERDTreeFocus<cr>')
keymap('n', '<C-n>', ':NERDTree<cr>')
keymap('n', '<C-b>', ':NERDTreeToggle<cr>')
keymap('n', '<C-f>', ':NERDTreeFind<CR>')

------------------------------------------------------------------
-- Telescope
keymap('n', '<leader>f', ':Telescope find_files<cr>')
keymap('n', '<leader>s', ':Telescope live_grep<cr>')

------------------------------------------------------------------
-- Tabs
keymap('n', '<C-j>', ':tabprevious<cr>')
keymap('n', '<C-k>', ':tabnext<cr>')

------------------------------------------------------------------
-- Reload Config
keymap('n', '<leader>r', ':source $MYVIMRC<cr>')

------------------------------------------------------------------
-- Ntree
keymap('n', '<leader>nt', ':Ntree<cr>')

------------------------------------------------------------------
-- Resize
keymap('n', '<leader>+', ':vertical resize +5<cr>')
keymap('n', '<leader>-', ':vertical resize -5<cr>')
keymap('n', '<leader>rp', ':resize 100<cr>')

------------------------------------------------------------------
-- COC
vim.cmd([[ inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>" ]])