local overrides = require("custom.overrides")
---@type NvPluginSpec[]
local plugins = {
    --             .-')     _ (`-.  
    --            ( OO ).  ( (OO  ) 
    --  ,--.     (_)---\_)_.`     \ 
    --  |  |.-') /    _ |(__...--'' 
    --  |  | OO )\  :` `. |  /  | | 
    --  |  |`-' | '..`''.)|  |_.' | 
    -- (|  '---.'.-._)   \|  .___.' 
    --  |      | \       /|  |      
    --  `------'  `-----' `--'      
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- format & linting
            {
                "jose-elias-alvarez/null-ls.nvim",
                config = function()
                    require "custom.configs.null-ls"
                end,
            },
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end, -- Override to setup mason-lspconfig
    },

    --          <-. (`-')  _  (`-') 
    --  _          \(OO )_ \-.(OO ) 
    --  \-,-----,--./  ,-.)_.'    \ 
    --   |  .--.|   `.'   (_...--'' 
    --  /_) (`-'|  |'.'|  |  |_.' | 
    --  ||  |OO |  |   |  |  .___.' 
    -- (_'  '--'|  |   |  |  |      
    --    `-----`--'   `--`--'      
    {
        "hrsh7th/nvim-cmp",
        opts = function()
            return require "custom.configs.cmp"
        end,
        config = function(_, opts)
            require("cmp").setup(opts)
        end,
    },

    --  _(`-')   (`-')  _ _  (`-') 
    -- ( (OO ).->(OO ).-/ \-.(OO ) 
    --  \    .'_ / ,---.  _.'    \ 
    --  '`'-..__)| \ /`.\(_...--'' 
    --  |  |  ' |'-'|_.' |  |_.' | 
    --  |  |  / (|  .-.  |  .___.' 
    --  |  '-'  /|  | |  |  |      
    --  `------' `--' `--`--'      
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            config = function()
                require("custom.configs.dap")
            end,
        },
        config = function ()
            require("dapui").setup()
        end
    },

    --                    (`-.      ('-.  _  .-')  _  .-')          _ .-') _     ('-.    .-')    
    --                  _(OO  )_  _(  OO)( \( -O )( \( -O )        ( (  OO) )  _(  OO)  ( OO ).  
    --  .-'),-----. ,--(_/   ,. \(,------.,------. ,------.  ,-.-') \     .'_ (,------.(_)---\_) 
    -- ( OO'  .-.  '\   \   /(__/ |  .---'|   /`. '|   /`. ' |  |OO),`'--..._) |  .---'/    _ |  
    -- /   |  | |  | \   \ /   /  |  |    |  /  | ||  /  | | |  |  \|  |  \  ' |  |    \  :` `.  
    -- \_) |  |\|  |  \   '   /, (|  '--. |  |_.' ||  |_.' | |  |(_/|  |   ' |(|  '--.  '..`''.) 
    --   \ |  | |  |   \     /__) |  .--' |  .  '.'|  .  '.',|  |_.'|  |   / : |  .--' .-._)   \ 
    --    `'  '-'  '    \   /     |  `---.|  |\  \ |  |\  \(_|  |   |  '--'  / |  `---.\       / 
    --      `-----'      `-'      `------'`--' '--'`--' '--' `--'   `-------'  `------' `-----'  
    -- mason
    {
        "williamboman/mason.nvim",
        opts = overrides.mason
    },

    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },

    -- nvimtree
    {
        "nvim-tree/nvim-tree.lua", lazy = false,
        opts = overrides.nvimtree,
    },
    -- gitsigns
    {
        "lewis6991/gitsigns.nvim",
        opts = overrides.gitsigns
    },

    --                      .-') _    
    --                     (  OO) )   
    --   ,----.     ,-.-') /     '._  
    --  '  .-./-')  |  |OO)|'--...__) 
    --  |  |_( O- ) |  |  \'--.  .--' 
    --  |  | .--, \ |  |(_/   |  |    
    -- (|  | '. (_/,|  |_.'   |  |    
    --  |  '--'  |(_|  |      |  |    
    --   `------'   `--'      `--'    
    -- fugitive
    {
        "https://github.com/tpope/vim-fugitive", lazy = false,
    },

    -- lazy git
    {
        "kdheepak/lazygit.nvim", lazy = false,
        config = function()
            require("telescope").load_extension("lazygit")
        end,
    },

    -- undotree
    {
        "mbbill/undotree", lazy = false,
        init = function()
            vim.g.undotree_WindowLayout = 3
            vim.opt.undofile = true
            vim.opt.undodir = vim.loop.os_homedir() .. "/.config/nvim/lua/custom/.undo"
        end,
    },

    --               .-') _  .-') _     ('-.  _  .-')              ('-.                  ('-.   
    --              ( OO ) )(  OO) )  _(  OO)( \( -O )            ( OO ).-.            _(  OO)  
    --   ,-.-') ,--./ ,--,' /     '._(,------.,------.    ,------./ . --. /   .-----. (,------. 
    --   |  |OO)|   \ |  |\ |'--...__)|  .---'|   /`. '('-| _.---'| \-.  \   '  .--./  |  .---' 
    --   |  |  \|    \|  | )'--.  .--'|  |    |  /  | |(OO|(_\  .-'-'  |  |  |  |('-.  |  |     
    --   |  |(_/|  .     |/    |  |  (|  '--. |  |_.' |/  |  '--.\| |_.'  | /_) |OO  )(|  '--.  
    --  ,|  |_.'|  |\    |     |  |   |  .--' |  .  '.'\_)|  .--' |  .-.  | ||  |`-'|  |  .--'  
    -- (_|  |   |  | \   |     |  |   |  `---.|  |\  \   \|  |_)  |  | |  |(_'  '--'\  |  `---. 
    --   `--'   `--'  `--'     `--'   `------'`--' '--'   `--'    `--' `--'   `-----'  `------' 
    -- dashboard
    {
        'glepnir/dashboard-nvim', lazy = false,
        dependencies = {"nvim-tree/nvim-web-devicons"},
        opts = function()
            return overrides.dashboard;
        end,
        config = function(_, opts)
            require('dashboard').setup(opts)
        end,
    },

    -- outline
    {
        "simrat39/symbols-outline.nvim", lazy = false,
        opts = function()
            return overrides.outline
        end,
        config = function()
            require("symbols-outline").setup()
        end,
    },

    -- sidebar
    {
        "sidebar-nvim/sidebar.nvim", lazy = false,
        opts = function()
            return overrides.sidebar
        end,
        config = function(_, opts)
            require("sidebar-nvim").setup(opts)
        end,
    },

    -- notifications
    {
        "rcarriga/nvim-notify", lazy = false,
        -- opts = function()
        --   return overrides.notify
        -- end,
        -- config = function(_, opts)
        config = function()
            -- require("notify").setup(opts)
            require("notify").setup()
            vim.notify = require("notify")
        end,
    },

    -- scrollbar
    {
        "petertriho/nvim-scrollbar", lazy = false,
        opts = function()
            return overrides.scrollbar
        end,
        config = function(_, opts)
            require("scrollbar.handlers.gitsigns").setup()
            require("scrollbar").setup(opts)
        end,
    },

    -- comments
    {
        "folke/todo-comments.nvim", lazy = false,
        dependencies = "nvim-lua/plenary.nvim",
        opts = function()
            return overrides.comments
        end,
        config = function(_, opts)
            require("todo-comments").setup(opts)
        end
    },

    -- bookmarks
    {
        "tom-anders/telescope-vim-bookmarks.nvim", lazy = false,
        dependencies = { "MattesGroeger/vim-bookmarks" },
        init = function()
            vim.g.bookmark_no_default_key_mappings = 1
            vim.g.bookmark_sign = "⚡"
        end,
        config = function()
            require("telescope").load_extension("vim_bookmarks")
        end,
    },

    -- ufo (fold columns)
    {
        "kevinhwang91/nvim-ufo",
        event = "VeryLazy",
        dependencies = { "kevinhwang91/promise-async", lazy = false },
        config = function()
            require("custom.configs.ufo")
        end,
    },

    --              .-') _                             .-') _             ('-.    .-')    
    --             (  OO) )                           (  OO) )          _(  OO)  ( OO ).  
    --  ,--. ,--.  /     '._ ,-.-')  ,--.      ,-.-') /     '._ ,-.-') (,------.(_)---\_) 
    --  |  | |  |  |'--...__)|  |OO) |  |.-')  |  |OO)|'--...__)|  |OO) |  .---'/    _ |  
    --  |  | | .-')'--.  .--'|  |  \ |  | OO ) |  |  \'--.  .--'|  |  \ |  |    \  :` `.  
    --  |  |_|( OO )  |  |   |  |(_/ |  |`-' | |  |(_/   |  |   |  |(_/(|  '--.  '..`''.) 
    --  |  | | `-' /  |  |  ,|  |_.'(|  '---.',|  |_.'   |  |  ,|  |_.' |  .--' .-._)   \ 
    -- ('  '-'(_.-'   |  | (_|  |    |      |(_|  |      |  | (_|  |    |  `---.\       / 
    --   `-----'      `--'   `--'    `------'  `--'      `--'   `--'    `------' `-----'  
    -- toggleterm
    {
        "akinsho/toggleterm.nvim", version = "*", lazy = false,
        config = function()
            require("toggleterm").setup()
        end,
    },

    -- code runner
    {
        "CRAG666/code_runner.nvim", lazy = false,
        opts = function()
            return overrides.coderunner
        end,
        config = function(_, opts)
            require('code_runner').setup(opts)
        end,
    },

    -- tmux navigation
    {
        "christoomey/vim-tmux-navigator", lazy = false
    },

    -- harpoon
    {
        "ThePrimeagen/harpoon", lazy = false
    },

    -- hop
    {
        'phaazon/hop.nvim', branch = 'v2', lazy = false,
        opts = function()
            return overrides.hop
        end,
        config = function(_, opts)
            require'hop'.setup(opts)
        end
    },

    {
        'mg979/vim-visual-multi', branch = 'master', lazy = false,
    },

    --              ('-.     .-') _     ('-.  ) (`-.      
    --             ( OO ).-.(  OO) )  _(  OO)  ( OO ).    
    --  ,--.       / . --. //     '._(,------.(_/.  \_)-. 
    --  |  |.-')   | \-.  \ |'--...__)|  .---' \  `.'  /  
    --  |  | OO ).-'-'  |  |'--.  .--'|  |      \     /\  
    --  |  |`-' | \| |_.'  |   |  |  (|  '--.    \   \ |  
    -- (|  '---.'  |  .-.  |   |  |   |  .--'   .'    \_) 
    --  |      |   |  | |  |   |  |   |  `---. /  .'.  \  
    --  `------'   `--' `--'   `--'   `------''--'   '--' 
    {
        "lervag/vimtex", lazy = false,
        init = function ()
            vim.cmd('filetype plugin indent on')
            vim.cmd('syntax enable')
            -- vim.g.maplocalleader = ','
            -- vim.g.vimtex_view_general_viewer = 'zathura'
            vim.g.vimtex_view_general_viewer = 'okular'
            vim.g.vimtex_quickfix_open_on_warning = 0
            vim.g.vimtex_log_ignore = {
                'Underfull',
                'Overfull',
                'specifier changed to',
                'Token not allowed in a PDF string'
            }
            vim.g.vimtex_compiler_latexmk = {
                aux_dir = 'aux/',
                out_dir = 'out/',
                callback = 1,
                continuous = 1,
                executable = 'latexmk',
                hooks = {},
                options = {
                    '-verbose',
                    '-file-line-error',
                    '-synctex=1',
                    '-interaction=nonstopmode',
                },
            }
        end
    },

    --   (`\ .-') /`   ('-. .-. .-')  _ .-') _     ('-.        (`-.   
    --    `.( OO ),' _(  OO)\  ( OO )( (  OO) )  _(  OO)     _(OO  )_ 
    -- ,--./  .--.  (,------.;-----.\ \     .'_ (,------.,--(_/   ,. \
    -- |      |  |   |  .---'| .-.  | ,`'--..._) |  .---'\   \   /(__/
    -- |  |   |  |,  |  |    | '-' /_)|  |  \  ' |  |     \   \ /   / 
    -- |  |.'.|  |_)(|  '--. | .-. `. |  |   ' |(|  '--.   \   '   /, 
    -- |         |   |  .--' | |  \  ||  |   / : |  .--'    \     /__)
    -- |   ,'.   |   |  `---.| '--'  /|  '--'  / |  `---.    \   /    
    -- '--'   '--'   `------'`------' `-------'  `------'     `-'     
    {
        "ray-x/web-tools.nvim", lazy = false,
        dependencies = { "cakebaker/scss-syntax.vim" },
        opts = function()
            return overrides.webtools
        end,
        config = function (_, opts)
            require'web-tools'.setup(opts)
        end
    },
}
return plugins

-- All NvChad plugins are lazy-loaded by default
-- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
-- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
-- {
--   "mg979/vim-visual-multi",
--   lazy = false,
-- }
-- Install a plugin
-- {
--   "max397574/better-escape.nvim",
--   event = "InsertEnter",
--   config = function()
--     require("better_escape").setup()
--   end,
-- },
-- To make a plugin not be loaded
-- {
--   "NvChad/nvim-colorizer.lua",
--   enabled = false
-- },
