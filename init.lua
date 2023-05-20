require("plugins.plugins-setup")

require("core.options")
require("core.keymaps")

-- 插件
require("plugins.lualine")
require("plugins/nvim-tree")
require("plugins/lsp")
require("plugins/cmp")
require("plugins/comment")
require("plugins/autopairs")
require("plugins/bufferline")
require("plugins/gitsigns")
require("plugins/telescope")

-- coc.nvim插件
-- 在所有插件加载后启动 Coc.nvim
--[[
vim.cmd([[
  augroup AfterPlugins
    autocmd!
    autocmd VimEnter * silent! CocStart
  augroup END
]]
--]]
require("plugins/coc")
