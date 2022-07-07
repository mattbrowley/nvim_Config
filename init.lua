require "plugins"
require "utility.impatient"
require "options"
require "keymaps"
require "aesthetics.colorscheme"
require "coding.cmp"
require "lsp.lsp"
require "coding.telescope"
require "coding.treesitter"
require "coding.autopairs"
require "coding.comment"
require "coding.nvim-tree"
require "aesthetics.web-devicons"
require "aesthetics.bufferline"
require "aesthetics.lualine"
require "coding.toggleterm"
require "coding.project"
require "coding.symbols"
require "aesthetics.gitsigns"
require "aesthetics.indentline"
require "aesthetics.alpha"
require "aesthetics.shade"
require "snippets.luasnip"
-- require "utility.whichkey" -- Need to review configuation before I use it

-- plugins with default setup functions
require 'notify'.setup()
require 'colorizer'.setup()



-- #TODO
-- 1) Learn how to use luasnips
-- 2) Learn how to use null-ls for cpp files
-- 3) Learn how to set spell dictionaries based on filetypes
-- 4) Learn how to do folding
-- 5) Learn how to use fugitive, etc.
