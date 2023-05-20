--[[ 
coc.nvim 配置
vim.cmd([[
  autocmd FileType * silent! call CocAction("highlight")
]]
--]]
--[[vim.g.coc_global_extensions = {'coc-snippets', 'coc-tsserver', 'coc-pyright'}

vim.g.coc_config = {
  languageserver = {
    javascript = {
      command = 'javascript-language-server',
      filetypes = {'javascript', 'javascriptreact'},
    },
    typescript = {
      command = 'typescript-language-server',
      filetypes = {'typescript', 'typescriptreact'},
    },
    python = {
      command = 'pyright-langserver',
      filetypes = {'python'},
    },
  },
}
--]]


-- Coc.nvim 配置
vim.cmd([[autocmd FileType * silent! CocStart]])

-- 映射
vim.api.nvim_set_keymap('x', '<leader>f', "<Plug>(coc-format-selected)", { noremap = false })

local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
vim.keymap.set('i', '`', function()
    return vim.fn['coc#pum#next'](1)
end, opts)

vim.keymap.set("i", "<Tab>", function()
    if vim.fn['coc#pum#visible']() == 1 then
        return vim.fn['coc#pum#next'](1)
    end
    if require('plugin.coc').check_back_space() then
        return vim.fn['coc#refresh']()
    end
    return "<Tab>"
end, { noremap = true, expr = true })

vim.keymap.set("i", "<S-Tab>", function()
    if vim.fn['coc#pum#visible']() == 1 then
        return vim.fn['coc#pum#prev'](1)
    end
    return "<S-Tab>"
end, opts)
vim.keymap.set("i", "<CR>", function()
    if vim.fn['coc#pum#visible']() == 1 then
        return vim.fn['coc#pum#confirm']()
    end
    return "\r"
end, opts)

-- CocSniffer 快捷键
vim.api.nvim_set_keymap('n', '<Leader>s', ':CocCommand sniffer.showOutput<CR>', { noremap = true, silent = true })


-- 其他配置...

-- 配置列表

-- 支持语言设置 
sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'coc_snippets' },
    { name = 'coc_nvim' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'calc' },
    { name = 'emoji' },
    { name = 'tags' },
    { name = 'spell' },
    { name = 'omni' },
    { name = 'vim_dadbod_completion' },
    { name = 'vim_dadbod_ui' },
    { name = 'vim_dadbod_sql' },
    { name = 'vim-plug' },
    { name = 'vim_gutentags' },
    { name = 'vim_ultisnips' },
    { name = 'neorg' },
    { name = 'vimtex' },
    { name = 'coc_tabnine' },
    { name = 'coc_semantic' },
    { name = 'coc_ultisnips' },
    { name = 'coc_tsserver' },
    { name = 'coc_rust_analyzer' },
    { name = 'coc_json' },
    { name = 'coc_html' },
    { name = 'coc_css' },
    { name = 'coc_markdownlint' },
    { name = 'coc_cmake' },
    { name = 'python' },
}
