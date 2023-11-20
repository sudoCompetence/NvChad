local M = {}

--  _   .-')      ('-.      .-')                     .-') _  
-- ( '.( OO )_   ( OO ).-. ( OO ).                  ( OO ) ) 
--  ,--.   ,--.) / . --. /(_)---\_) .-'),-----. ,--./ ,--,'  
--  |   `.'   |  | \-.  \ /    _ | ( OO'  .-.  '|   \ |  |\  
--  |         |.-'-'  |  |\  :` `. /   |  | |  ||    \|  | ) 
--  |  |'.'|  | \| |_.'  | '..`''.)\_) |  |\|  ||  .     |/  
--  |  |   |  |  |  .-.  |.-._)   \  \ |  | |  ||  |\    |   
--  |  |   |  |  |  | |  |\       /   `'  '-'  '|  | \   |   
--  `--'   `--'  `--' `--' `-----'      `-----' `--'  `--'   
M.mason = {
    ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",

        -- c/cpp stuff
        "clangd",
        "clang-format",
    },
}

--  .-') _   _  .-')     ('-.     ('-.    .-')             .-') _    .-') _     ('-.  _  .-')   
-- (  OO) ) ( \( -O )  _(  OO)  _(  OO)  ( OO ).          (  OO) )  (  OO) )  _(  OO)( \( -O )  
-- /     '._ ,------. (,------.(,------.(_)---\_)  ,-.-') /     '._ /     '._(,------.,------.  
-- |'--...__)|   /`. ' |  .---' |  .---'/    _ |   |  |OO)|'--...__)|'--...__)|  .---'|   /`. ' 
-- '--.  .--'|  /  | | |  |     |  |    \  :` `.   |  |  \'--.  .--''--.  .--'|  |    |  /  | | 
--    |  |   |  |_.' |(|  '--. (|  '--.  '..`''.)  |  |(_/   |  |      |  |  (|  '--. |  |_.' | 
--    |  |   |  .  '.' |  .--'  |  .--' .-._)   \ ,|  |_.'   |  |      |  |   |  .--' |  .  '.' 
--    |  |   |  |\  \  |  `---. |  `---.\       /(_|  |      |  |      |  |   |  `---.|  |\  \  
--    `--'   `--' '--' `------' `------' `-----'   `--'      `--'      `--'   `------'`--' '--' 
M.treesitter = {
    ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
    },
    indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
    },
}

--      .-') _      (`-.           _   .-')     .-') _   _  .-')     ('-.     ('-.   
--     ( OO ) )   _(OO  )_        ( '.( OO )_  (  OO) ) ( \( -O )  _(  OO)  _(  OO)  
-- ,--./ ,--,',--(_/   ,. \ ,-.-') ,--.   ,--.)/     '._ ,------. (,------.(,------. 
-- |   \ |  |\\   \   /(__/ |  |OO)|   `.'   | |'--...__)|   /`. ' |  .---' |  .---' 
-- |    \|  | )\   \ /   /  |  |  \|         | '--.  .--'|  /  | | |  |     |  |     
-- |  .     |/  \   '   /,  |  |(_/|  |'.'|  |    |  |   |  |_.' |(|  '--. (|  '--.  
-- |  |\    |    \     /__),|  |_.'|  |   |  |    |  |   |  .  '.' |  .--'  |  .--'  
-- |  | \   |     \   /   (_|  |   |  |   |  |    |  |   |  |\  \  |  `---. |  `---. 
-- `--'  `--'      `-'      `--'   `--'   `--'    `--'   `--' '--' `------' `------' 
M.nvimtree = {
    auto_reload_on_write = true,
    sync_root_with_cwd = true,
    reload_on_bufenter = true,
    respect_buf_cwd = true,
    renderer = {
        highlight_git = true,
        icons = {
            git_placement = "after",
            modified_placement = "before",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
                modified = true,
            },
            glyphs = {
                git = {
                    staged = "✓",
                    unstaged = "⚙",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "☢",
                    deleted = "",
                    ignored = "◌",
                },
            },
        },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
            min = vim.diagnostic.severity.HINT,
            max = vim.diagnostic.severity.ERROR,
        },
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    filesystem_watchers = {
        enable = true,
        debounce_delay = 50,
        ignore_dirs = {},
    },
    git = {
        enable = true,
        ignore = true,
    },
    experimental = {
        git = {
            async = true,
        },
    }
}

--
--            _    (`-')     (`-').-> _             <-. (`-')_ (`-').-> 
--     .->   (_)   ( OO).->  ( OO)_  (_)       .->     \( OO) )( OO)_   
--  ,---(`-'),-(`-'/    '._ (_)--\_) ,-(`-'),---(`-',--./ ,--/(_)--\_)  
-- '  .-(OO )| ( OO|'--...__/    _ / | ( OO'  .-(OO |   \ |  |/    _ /  
-- |  | .-, \|  |  `--.  .--\_..`--. |  |  |  | .-, |  . '|  |\_..`--.  
-- |  | '.(_(|  |_/   |  |  .-._)   (|  |_/|  | '.(_|  |\    |.-._)   \ 
-- |  '-'  | |  |'->  |  |  \       /|  |'-|  '-'  ||  | \   |\       / 
--  `-----'  `--'     `--'   `-----' `--'   `-----' `--'  `--' `-----'  
M.gitsigns = {
    signs = {
        add = { hl = "DiffAdd", text = "➜", numhl = "GitSignsAddNr" },
        untracked = { hl = "GitSignsAdd", text = "☢", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
        change = { hl = "DiffChange", text = "", numhl = "GitSignsChangeNr" },
        delete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
        topdelete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
        changedelete = { hl = "DiffChangeDelete", text = "", numhl = "GitSignsChangeNr" },
    },
}

--  _ .-') _     ('-.      .-')    ('-. .-..-. .-')                  ('-.     _  .-')  _ .-') _   
-- ( (  OO) )   ( OO ).-. ( OO ). ( OO )  /\  ( OO )                ( OO ).-.( \( -O )( (  OO) )  
--  \     .'_   / . --. /(_)---\_),--. ,--. ;-----.\  .-'),-----.   / . --. / ,------. \     .'_  
--  ,`'--..._)  | \-.  \ /    _ | |  | |  | | .-.  | ( OO'  .-.  '  | \-.  \  |   /`. ',`'--..._) 
--  |  |  \  '.-'-'  |  |\  :` `. |   .|  | | '-' /_)/   |  | |  |.-'-'  |  | |  /  | ||  |  \  ' 
--  |  |   ' | \| |_.'  | '..`''.)|       | | .-. `. \_) |  |\|  | \| |_.'  | |  |_.' ||  |   ' | 
--  |  |   / :  |  .-.  |.-._)   \|  .-.  | | |  \  |  \ |  | |  |  |  .-.  | |  .  '.'|  |   / : 
--  |  '--'  /  |  | |  |\       /|  | |  | | '--'  /   `'  '-'  '  |  | |  | |  |\  \ |  '--'  / 
--  `-------'   `--' `--' `-----' `--' `--' `------'      `-----'   `--' `--' `--' '--'`-------'  
M.dashboard = {
    theme = 'hyper',
    config = {
        week_header = {
            enable = true,
        },
        shortcut = {
            { desc = '[  sudoCompetence]'},
            {
                desc = ' home',
                group = 'DashboardColor',
                action = 'cd ~/Repositories/',
                actiontwo = 'NvimTreeToggle',
                key = 'h',
            },
            {
                desc = ' config',
                group = 'DashboardFooter',
                action = 'cd ~/.config/nvim/lua/custom',
                key = 'c',
            },
            {
                icon = ' ',
                desc = 'files',
                group = 'DashboardHeader',
                action = 'Telescope find_files',
                key = 'f',
            },
            {
                desc = ' Update',
                group = 'DashboardFooter',
                action = 'Lazy update',
                key = 'u'
            },
        },
        footer = {
            '',
            '',
            '',
            '',
            '⚡“He who has a why to live for can bear almost any how.” - Friedrich Nietzsche ⚡',
        }
    },
}

--  (`-').->           (`-')                          <-.(`-') (`-')  _   (`-')  
--  ( OO)_  _       <-.(OO )     .->     <-.     <-.   __( OO) (OO ).-/<-.(OO )  
-- (_)--\_) \-,-----,------,(`-')----. ,--. )  ,--. ) '-'---.\ / ,---. ,------,) 
-- /    _ /  |  .--.|   /`. ( OO).-.  '|  (`-')|  (`-'| .-. (/ | \ /`.\|   /`. ' 
-- \_..`--. /_) (`-'|  |_.' ( _) | |  ||  |OO )|  |OO | '-' `.)'-'|_.' |  |_.' | 
-- .-._)   \||  |OO |  .   .'\|  |)|  (|  '__ (|  '__ | /`'.  (|  .-.  |  .   .' 
-- \       (_'  '--'|  |\  \  '  '-'  '|     |'|     || '--'  /|  | |  |  |\  \  
--  `-----'   `-----`--' '--'  `-----' `-----' `-----'`------' `--' `--`--' '--' 
M.scrollbar = {
    set_highlights = true,
    marks = {
        Cursor = { text = "", color="#ffffff"},
        GitAdd = { text = "➜", color = "#6dee85" },
        GitChange = { text = "", color = "#7199ff" },
        GitDelete = { text = "✗", color="#ee6d85" },
        Error = { text = { "" }, color = "#ee6d85" },
        Warn = { text = { "" }, color = "#ebbd34" },
        Info = { text = { "" }, color = "grey" },
        Hint = { text = { "" }, color = "#6dee85" },
        Search = { text = { "✗" }, color = "#ebbd34" },
        Misc = { text = { "◌" }, color = "grey" },
    },
}

--                     (`-')             _    <-. (`-')_ (`-')  _ 
--      .->       .->  ( OO).->   <-.   (_)      \( OO) )( OO).-/ 
-- (`-')----.,--.(,--. /    '._ ,--. )  ,-(`-',--./ ,--/(,------. 
-- ( OO).-.  |  | |(`-'|'--...__|  (`-')| ( OO|   \ |  | |  .---' 
-- ( _) | |  |  | |(OO `--.  .--|  |OO )|  |  |  . '|  |(|  '--.  
--  \|  |)|  |  | | |  \  |  | (|  '__ (|  |_/|  |\    | |  .--'  
--   '  '-'  \  '-'(_ .'  |  |  |     |'|  |'-|  | \   | |  `---. 
--    `-----' `-----'     `--'  `-----' `--'  `--'  `--' `------' 
M.outline = {
    keymaps = { -- These keymaps can be a string or a table for multiple keys
        fold = "f",
        unfold = "o",
        fold_all = "a",
        unfold_all = "c",
        fold_reset = "r",
        close = {"<Esc>", "q"},
        goto_location = "<Cr>",
        focus_location = "o",
        hover_symbol = "<C-space>",
        toggle_preview = "K",
        rename_symbol = "R",
        code_actions = "A",
    },
    symbols = {
        File = { icon = "", hl = "@text.uri" },
        Module = { icon = "", hl = "@namespace" },
        Namespace = { icon = "", hl = "@namespace" },
        Package = { icon = "", hl = "@namespace" },
        Class = { icon = "𝓒", hl = "@type" },
        Method = { icon = "ƒ", hl = "@method" },
        Property = { icon = "", hl = "@method" },
        Field = { icon = "", hl = "@field" },
        Constructor = { icon = "", hl = "@constructor" },
        Enum = { icon = "ℰ", hl = "@type" },
        Interface = { icon = "ﰮ", hl = "@type" },
        Function = { icon = "", hl = "@function" },
        Variable = { icon = "", hl = "@constant" },
        Constant = { icon = "", hl = "@constant" },
        String = { icon = "𝓐", hl = "@string" },
        Number = { icon = "#", hl = "@number" },
        Boolean = { icon = "⊨", hl = "@boolean" },
        Array = { icon = "", hl = "@constant" },
        Object = { icon = "⦿", hl = "@type" },
        Key = { icon = "🔐", hl = "@type" },
        Null = { icon = "NULL", hl = "@type" },
        EnumMember = { icon = "", hl = "@field" },
        Struct = { icon = "𝓢", hl = "@type" },
        Event = { icon = "🗲", hl = "@type" },
        Operator = { icon = "+", hl = "@operator" },
        TypeParameter = { icon = "𝙏", hl = "@parameter" },
        Component = { icon = "", hl = "@function" },
        Fragment = { icon = "", hl = "@constant" },
    },
}

--  ( OO)_  (_)  ( (OO ).->( OO).-/__( OO) (OO ).-/<-.(OO )  
-- (_)--\_) ,-(`-'\    .'_(,------'-'---.\ / ,---. ,------,) 
-- /    _ / | ( OO'`'-..__)|  .---| .-. (/ | \ /`.\|   /`. ' 
-- \_..`--. |  |  |  |  ' (|  '--.| '-' `.)'-'|_.' |  |_.' | 
-- .-._)   (|  |_/|  |  / :|  .--'| /`'.  (|  .-.  |  .   .' 
-- \       /|  |'-|  '-'  /|  `---| '--'  /|  | |  |  |\  \  
--  `-----' `--'  `------' `------`------' `--' `--`--' '--' 
M.sidebar = {
    sections = { "datetime", "git", "diagnostics", "todos" },
}

--                    <-. (`-') <-. (`-')  (`-')  <-. (`-')_(`-')     (`-').-> 
--  _            .->     \(OO )_   \(OO )_ ( OO).-/  \( OO) ( OO).->  ( OO)_   
--  \-,-----(`-')----.,--./  ,-.,--./  ,-.(,------,--./ ,--//    '._ (_)--\_)  
--   |  .--.( OO).-.  |   `.'   |   `.'   ||  .---|   \ |  ||'--...__/    _ /  
--  /_) (`-'( _) | |  |  |'.'|  |  |'.'|  (|  '--.|  . '|  |`--.  .--\_..`--.  
--  ||  |OO )\|  |)|  |  |   |  |  |   |  ||  .--'|  |\    |   |  |  .-._)   \ 
-- (_'  '--'\ '  '-'  |  |   |  |  |   |  ||  `---|  | \   |   |  |  \       / 
--    `-----'  `-----'`--'   `--`--'   `--'`------`--'  `--'   `--'   `-----'  
M.comments = {
    signs = true, -- show icons in the signs column
    sign_priority = 8, -- sign priority
    keywords = {
        -- General
        TODO = { icon = " ", color = "#6dee85" },
        -- TODO = { icon = " ", color = "#6dee85" },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        OPTIM = { icon = " ", alt = { "PERF", "PERFORMANCE", "OPTIMIZE" } },
        WORKING = { icon = " ", color = "#ee6d85", alt = { "CURRENT", "CURRENTLY"} },
        DEBUG =  { icon = " ", color = "#ee6d85", alt = { "FIX", "FIXME", "BUG", "FIXIT", "ISSUE" }, },
        TEST = { icon = " ", color = "#6dee85", alt = { "TESTING" } },
        WARN = { icon = " ", color = "#ebbd34", alt = { "WARNING" } },
        BEGIN = { icon = " ", color = "#6dee85", alt = { "WARNING" } },
        END = { icon = " ", color = "#ebbd34", alt = { "WARNING" } },
        SUS = { icon = " ", color = "#ee6d85", alt = { "SUS" } },

        -- LaTex
        Part = { icon = " ", color = "#5F8787" },
        Chapter = { icon = " ", color = "#7199FF" },
        Section = { icon = " ", color = "#6dee85" },
        Subsection= { icon = " ", color = "#ebbd34" },
        Subsubsection = { icon = " ", color = "#E05F51" },
    }
}


-- <-.(`-')                    <-.(`-')<-. (`-')  (`-')  _   (`-')<-.(`-') (`-').-> 
--  __( OO)     .->       .->   __( OO)   \(OO )_ (OO ).-/<-.(OO ) __( OO) ( OO)_   
-- '-'---.\(`-')----.(`-')----.'-'. ,--,--./  ,-.)/ ,---. ,------,'-'. ,--(_)--\_)  
-- | .-. (/( OO).-.  ( OO).-.  |  .'   |   `.'   || \ /`.\|   /`. |  .'   /    _ /  
-- | '-' `.( _) | |  ( _) | |  |      /|  |'.'|  |'-'|_.' |  |_.' |      /\_..`--.  
-- | /`'.  |\|  |)|  |\|  |)|  |  .   '|  |   |  (|  .-.  |  .   .|  .   '.-._)   \ 
-- | '--'  / '  '-'  ' '  '-'  |  |\   |  |   |  ||  | |  |  |\  \|  |\   \       / 
-- `------'   `-----'   `-----'`--' '--`--'   `--'`--' `--`--' '--`--' '--'`-----'  
M.bookmarks = {
    n = {
        ["<leader>ml"] = {
            function()
                require('telescope').extensions.vim_bookmarks.all()
            end,
            "show all marks",
        },
        ["<leader>mf"] = {
            function()
                require("telescope").extensions.vim_bookmarks.current_file()
            end,
            "show current file marks",
        },
        ["<leader>ma"] = { "<cmd>BookmarkToggle<CR>", "toggle mark"},
        ["<leader>me"] = { "<cmd>BookmarkAnnotate<CR>", "annotate mark" },
        ["<leader>mn"] = { "<cmd>BookmarkNext<CR>", "goto next mark" },
        ["<leader>mp"] = { "<cmd>BookmarkPrev<CR>", "goto prev mark" },
        ["<leader>mca"] = { "<cmd>BookmarkClearAll<CR>", "clear all marks" }
    }
}

--                    _(`-')   (`-')  _  (`-')          <-. (`-')_<-. (`-')_ (`-')  _  (`-')  
--  _            .-> ( (OO ).->( OO).-<-.(OO )     .->     \( OO) )  \( OO) )( OO).-<-.(OO )  
--  \-,-----(`-')----.\    .'_(,------,------,,--.(,--. ,--./ ,--/,--./ ,--/(,------,------,) 
--   |  .--.( OO).-.  '`'-..__)|  .---|   /`. |  | |(`-'|   \ |  ||   \ |  | |  .---|   /`. ' 
--  /_) (`-'( _) | |  |  |  ' (|  '--.|  |_.' |  | |(OO |  . '|  ||  . '|  |(|  '--.|  |_.' | 
--  ||  |OO )\|  |)|  |  |  / :|  .--'|  .   .|  | | |  |  |\    ||  |\    | |  .--'|  .   .' 
-- (_'  '--'\ '  '-'  |  '-'  /|  `---|  |\  \\  '-'(_ .|  | \   ||  | \   | |  `---|  |\  \  
--    `-----'  `-----'`------' `------`--' '--'`-----'  `--'  `--'`--'  `--' `------`--' '--' 
M.coderunner = {
    mode = "toggleterm",
    filetype = {
        c = {
            "cd $dir &&",
            "gcc -g $fileName -o out/$fileNameWithoutExt &&",
            "out/$fileNameWithoutExt"
        },
        asm = {
            "cd $dir &&",
            "gcc -Og $fileName -o out/$fileNameWithoutExt -g &&",
            "out/$fileNameWithoutExt"
        },
        java = {
            "cd $dir &&",
            "javac $fileName -d bin/ &&",
            "java -cp bin/ $fileNameWithoutExt"
        },
        python = {
            "cd $dir &&",
            "python $fileName",
        },
        sql = {
            "cd $dir &&",
            "cat $fileName | sql database_name.db"
        }
    }
}

--  (`-').->          _  (`-') 
--  (OO )__     .->   \-.(OO ) 
-- ,--. ,'-(`-')----. _.'    \ 
-- |  | |  ( OO).-.  (_...--'' 
-- |  `-'  ( _) | |  |  |_.' | 
-- |  .-.  |\|  |)|  |  .___.' 
-- |  | |  | '  '-'  |  |      
-- `--' `--'  `-----'`--'      
M.hop = {
    keys = 'asdfghjklqwertyuiop',
    quit_key = '<ESC>'
}

--      .->   (`-')  <-.(`-')         (`-').-(`-')  _  (`-')      (`-')(`-')  _  (`-')  
--  (`(`-')/`)( OO).-/__( OO)         ( OO)_ ( OO).-<-.(OO )     _(OO )( OO).-<-.(OO )  
-- ,-`( OO).'(,------'-'---.\ (`-')  (_)--\_(,------,------,,--.(_/,-.(,------,------,) 
-- |  |\  |  ||  .---| .-. (/ ( OO).-/    _ /|  .---|   /`. \   \ / (_/|  .---|   /`. ' 
-- |  | '.|  (|  '--.| '-' `.(,------\_..`--(|  '--.|  |_.' |\   /   /(|  '--.|  |_.' | 
-- |  |.'.|  ||  .--'| /`'.  |`------.-._)   |  .--'|  .   ._ \     /_)|  .--'|  .   .' 
-- |   ,'.   ||  `---| '--'  /       \       |  `---|  |\  \\-'\   /   |  `---|  |\  \  
-- `--'   '--'`------`------'         `-----'`------`--' '--'   `-'    `------`--' '--' 
M.webtools = {
    keymaps = {
        rename = nil,  -- by default use same setup of lspconfig
        repeat_rename = '.', -- . to repeat
    },
    hurl = {  -- hurl default
        show_headers = false, -- do not show http headers
        floating = false,   -- use floating windows (need guihua.lua)
        formatters = {  -- format the result by filetype
            json = { 'jq' },
            html = { 'prettier', '--parser', 'html' },
        },
    },
}
return M
-- M.vgit = {
--     settings = {
--         git = {
--             cmd = 'git', -- optional setting, not really required
--             fallback_cwd = vim.fn.expand("$HOME"),
--             fallback_args = {
--                 "--config-dir",
--                 vim.fn.expand("$HOME/.config/nvim"),
--                 "--dev-dir",
--                 vim.fn.expand("$HOME/Repositories/"),
--                 "--home-tree",
--                 vim.fn.expand("$HOME"),
--             },
--         },
--         hls = {
--             GitBackground = 'Normal',
--             GitHeader = 'NormalFloat',
--             GitFooter = 'NormalFloat',
--             GitBorder = 'LineNr',
--             GitLineNr = 'LineNr',
--             GitComment = 'Comment',
--             GitSignsAdd = {
--                 gui = nil,
--                 fg = '#6dee85',
--                 bg = nil,
--                 sp = nil,
--                 override = false,
--             },
--             GitSignsChange = {
--                 gui = nil,
--                 fg = '#7199ff',
--                 bg = nil,
--                 sp = nil,
--                 override = false,
--             },
--             GitSignsDelete = {
--                 gui = nil,
--                 fg = '#ee6d85',
--                 bg = nil,
--                 sp = nil,
--                 override = false,
--             },
--             GitSignsAddLn = 'DiffAdd',
--             GitSignsDeleteLn = 'DiffDelete',
--             GitWordAdd = {
--                 gui = nil,
--                 fg = nil,
--                 bg = '#6dee85',
--                 sp = nil,
--                 override = false,
--             },
--             GitWordDelete = {
--                 gui = nil,
--                 fg = nil,
--                 bg = '#7199ff',
--                 sp = nil,
--                 override = false,
--             },
--         },
--         live_blame = {
--             enabled = true,
--             format = function(blame, git_config)
--                 local config_author = git_config['user.name']
--                 local author = blame.author
--                 if config_author == author then
--                     author = 'You'
--                 end
--                 local time = os.difftime(os.time(), blame.author_time)
--                 / (60 * 60 * 24 * 30 * 12)
--                 local time_divisions = {
--                     { 1, 'years' },
--                     { 12, 'months' },
--                     { 30, 'days' },
--                     { 24, 'hours' },
--                     { 60, 'minutes' },
--                     { 60, 'seconds' },
--                 }
--                 local counter = 1
--                 local time_division = time_divisions[counter]
--                 local time_boundary = time_division[1]
--                 local time_postfix = time_division[2]
--                 while time < 1 and counter ~= #time_divisions do
--                     time_division = time_divisions[counter]
--                     time_boundary = time_division[1]
--                     time_postfix = time_division[2]
--                     time = time * time_boundary
--                     counter = counter + 1
--                 end
--                 local commit_message = blame.commit_message
--                 if not blame.committed then
--                     author = 'You'
--                     commit_message = 'Uncommitted changes'
--                     return string.format('  %s  %s', author, commit_message)
--                 end
--                 local max_commit_message_length = 255
--                 if #commit_message > max_commit_message_length then
--                     commit_message = commit_message:sub(1, max_commit_message_length) .. '...'
--                 end
--                 return string.format(
--                     '  %s  %s  %s',
--                     author,
--                     string.format(
--                         '%s %s ago',
--                         time >= 0 and math.floor(time + 0.5) or math.ceil(time - 0.5),
--                         time_postfix
--                     ),
--                     commit_message
--                 )
--             end,
--         },
--         live_gutter = {
--             enabled = true,
--             edge_navigation = true, -- This allows users to navigate within a hunk
--         },
--         authorship_code_lens = {
--             enabled = true,
--         },
--         scene = {
--             diff_preference = 'unified', -- unified or split
--             keymaps = {
--                 quit = 'q'
--             }
--         },
--         diff_preview = {
--             keymaps = {
--                 buffer_stage = 'S',
--                 buffer_unstage = 'U',
--                 buffer_hunk_stage = 's',
--                 buffer_hunk_unstage = 'u',
--                 toggle_view = 't',
--             },
--         },
--         project_diff_preview = {
--             keymaps = {
--                 buffer_stage = 's',
--                 buffer_unstage = 'u',
--                 buffer_hunk_stage = 'gs',
--                 buffer_hunk_unstage = 'gu',
--                 buffer_reset = 'r',
--                 stage_all = 'S',
--                 unstage_all = 'U',
--                 reset_all = 'R',
--             },
--         },
--         project_commit_preview = {
--             keymaps = {
--                 save = 'S',
--             },
--         },
--         signs = {
--             enabled = false,
--             priority = 10,
--             definitions = {
--                 GitSignsAddLn = {
--                     linehl = 'GitSignsAddLn',
--                     texthl = nil,
--                     numhl = nil,
--                     icon = nil,
--                     text = '➜',
--                 },
--                 GitSignsDeleteLn = {
--                     linehl = 'GitSignsDeleteLn',
--                     texthl = nil,
--                     numhl = nil,
--                     icon = nil,
--                     text = '✗',
--                 },
--                 GitSignsAdd = {
--                     texthl = 'GitSignsAdd',
--                     numhl = nil,
--                     icon = nil,
--                     linehl = nil,
--                     text = '➜',
--                 },
--                 GitSignsDelete = {
--                     texthl = 'GitSignsDelete',
--                     numhl = nil,
--                     icon = nil,
--                     linehl = nil,
--                     text = '✗',
--                 },
--                 GitSignsChange = {
--                     texthl = 'GitSignsChange',
--                     numhl = nil,
--                     icon = nil,
--                     linehl = nil,
--                     text = '',
--                 },
--             },
--             usage = {
--                 screen = {
--                     add = 'GitSignsAddLn',
--                     remove = 'GitSignsDeleteLn',
--                 },
--                 main = {
--                     add = 'GitSignsAdd',
--                     remove = 'GitSignsDelete',
--                     change = 'GitSignsChange',
--                 },
--             },
--         },
--         symbols = {
--             void = '⣿',
--         },
--     }
-- }
