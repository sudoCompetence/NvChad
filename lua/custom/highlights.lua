-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.add = {
    -- base
    -- Normal = { bg = "none"},
    Visual = { bg = "grey", fg="#0F0F0F" },
    FoldColumn = { bg="none" },
    Comment = { italic = true },

    -- git
    DiffAdd = { fg = "#6dee85"},
    DiffAddNr = { fg = "#6dee85"},
    DiffChange = { fg = "#7199ff"},
    DiffDelete = { fg = "#ee6d85"},
    DiffChangeDelete = { fg = "#7199ff"},
    GitSignsAdd = { fg = "#ebbd34"},
    GitSignsAddNr = { fg = "#ebbd34"},

    --nvim tree
    NvimTreeNormal = { bg = "none"},
    NvimTreeNormalNC = { bg = "none"},
    NvimTreeLineNr = { fg = "#7199ff", bold = true },
    NvimTreeFolderName = { fg = "#7199ff", bold = true },
    NvimTreeOpenedFolderName = { fg = "#7199ff", bold = true },
    NvimTreeEmptyFolderName = { fg = "grey", bold = true },
    NvimTreeFileStaged = { fg = "#7199ff", bold = true },
    NvimTreeModifiedFile = { fg = "#7199ff", bold = true },
    NvimTreeFileRenamed = { fg = "#ebbd34", bold = true },
    NvimTreeGitNew = { fg = "#ebbd34", bold = true },
    NvimTreeGitStaged = { fg = "#7199ff", bold = true },
    NvimTreeGitRenamed = { fg = "#ebbd34", bold = true },

    -- dashboard
    DashboardColor = { fg="#ebbd34" },
    DashboardHeader = { fg="#7199FF" },
    DashboardFooter = { fg="#ee6d85" },
    DashboardFiles = { fg="#7199ff" },
    DashboardMruTitle = { fg="#ee6d85" },
    DashboardMruIcon = { fg="#ee6d85" },
    DashboardProjectTitle = { fg="#ee6d85" },
    DashboardProjectTitleIcon = { fg="#ee6d85" },
    DashboardProjectIcon = { fg="#ee6d85" },
    DashboardShotCutIcon = { fg="#7199ff" },
}
---@type HLTable
M.override = M.add
return M
