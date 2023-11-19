---@type ChadrcConfig 
local M = {}
local highlights = require "custom.highlights"

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
M.ui = {
    transparency = false,
    theme = "tokyodark",
    theme_toggle = { "onedark", "monekai" },
    statusline = { theme = "vscode_colored" },
    tabufline = { lazyload = false },
    hl_override = highlights.override,
    hl_add = highlights.add,
    lsp_semantic_tokens = true,
}
return M
