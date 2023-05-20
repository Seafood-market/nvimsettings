vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- 用 <Tab> 进行下一个补全项
keymap.set("i", "<Tab>", "pumvisible() ? '<C-n>' : '<Tab>'", { expr = true })

-- 用 <S-Tab> 进行上一个补全项
keymap.set("i", "<S-Tab>", "pumvisible() ? '<C-p>' : '<S-Tab>'", { expr = true })

-- 按 <CR> 确认补全项
keymap.set("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<CR>'", { expr = true })

-- 按 <C-j> 和 <C-k> 在补全项之间进行上下移动
keymap.set("i", "<C-j>", "pumvisible() ? '<C-n>' : '<C-j>'", { expr = true })
keymap.set("i", "<C-k>", "pumvisible() ? '<C-p>' : '<C-k>'", { expr = true })

