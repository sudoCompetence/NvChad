---@type MappingsTable
local M = {}

--  _(`-')    _     (`-').->(`-')  _<-.(`-')         (`-')  __(`-')    
-- ( (OO ).->(_)    ( OO)_  (OO ).-/ __( OO)   <-.   ( OO).-( (OO ).-> 
--  \    .'_ ,-(`-'(_)--\_) / ,---. '-'---.\ ,--. ) (,------.\    .'_  
--  '`'-..__)| ( OO/    _ / | \ /`.\| .-. (/ |  (`-')|  .---''`'-..__) 
--  |  |  ' ||  |  \_..`--. '-'|_.' | '-' `.)|  |OO (|  '--. |  |  ' | 
--  |  |  / (|  |_/.-._)   (|  .-.  | /`'.  (|  '__ ||  .--' |  |  / : 
--  |  '-'  /|  |'-\       /|  | |  | '--'  /|     |'|  `---.|  '-'  / 
--  `------' `--'   `-----' `--' `--`------' `-----' `------'`------'  
M.disabled = {
    n = {
        -- ["<leader>v"] = "", -- terminal (vertical)
        -- ["<leader>h"] = "", -- terminal (horizontal)
        ["<leader>n"] = "", -- turn off line number toggle
    },
}

--           (`-')  <-. (`-')_ (`-')  _  (`-') (`-')  _          
--     .->   ( OO).-/  \( OO) )( OO).-<-.(OO ) (OO ).-/   <-.    
--  ,---(`-'(,------,--./ ,--/(,------,------,)/ ,---.  ,--. )   
-- '  .-(OO )|  .---|   \ |  | |  .---|   /`. '| \ /`.\ |  (`-') 
-- |  | .-, (|  '--.|  . '|  |(|  '--.|  |_.' |'-'|_.' ||  |OO ) 
-- |  | '.(_/|  .--'|  |\    | |  .--'|  .   .(|  .-.  (|  '__ | 
-- |  '-'  | |  `---|  | \   | |  `---|  |\  \ |  | |  ||     |' 
--  `-----'  `------`--'  `--' `------`--' '--'`--' `--'`-----'  
M.general = {
    n = {
        [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["qq"] = { "<cmd>q<CR>", "quit window" },

        ["<leader>st"] = { "<cmd>Dashboard<CR>", "open Dashboard", opts = { nowait = true }},
        ["<leader>ct"] = { "<cmd> Telescope themes <CR>", "Nvchad themes" },
        ["<leader>fn"] = { "<cmd>Telescope notify<CR>", "notifications" },

        ["="] = { "<cmd>vertical resize +2<CR>", "vertical pane size increase", opts = { nowait = true }},
        ["-"] = { "<cmd>vertical resize -2<CR>", "vertical pane size decrease", opts = { nowait = true }},
        ["+"] = { "<cmd>horizontal resize +2<CR>", "horizontal pane size increase", opts = { nowait = true }},
        ["_"] = { "<cmd>horizontal resize -2<CR>", "horizontal pane size decrease", opts = { nowait = true }},

        ["ml"] = { "$", "move to end of line", opts = { nowait = true }},
        ["ma"] = { "^", "move to end of line", opts = { nowait = true }},

        ["<C-h>"] = { "<cmd>TmuxNavigateLeft<CR>", "navigate left", opts = { nowait = true }},
        ["<C-l>"] = { "<cmd>TmuxNavigateRight<CR>", "navigate right", opts = { nowait = true }},
        ["<C-j>"] = { "<cmd>TmuxNavigateDown<CR>", "navigate down", opts = { nowait = true }},
        ["<C-k>"] = { "<cmd>TmuxNavigateUp<CR>", "navigate up", opts = { nowait = true }},

        ["<C-e>"] = { "<cmd>RunFile<CR>", "run code", opts = { nowait = true }},
        ["<A-e>"] = { "<cmd>RunCode<CR>", "run code", opts = { nowait = true }},
    },
}

--            _    (`-')      
--     .->   (_)   ( OO).->   
--  ,---(`-'),-(`-'/    '._   
-- '  .-(OO )| ( OO|'--...__) 
-- |  | .-, \|  |  `--.  .--' 
-- |  | '.(_(|  |_/   |  |    
-- |  '-'  | |  |'->  |  |    
--  `-----'  `--'     `--'    
M.git = {
    n = {
        -- fugitive 
        ["<leader>gs"] = { "<cmd>Git<CR>", "git status"},
        -- lazygit
        ["<leader>gl"] = { "<cmd>LazyGit<CR>", "launch lazy git"},
        -- telescope 
        ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "git telescope status" },
        ["<leader>gb"] = { "<cmd> Telescope git_branches <CR>", "git telescope branches" },
        ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "git telescope commits" },
        ["<leader>gh"] = { "<cmd> Telescope git_stash <CR>", "git telescope stash" },
        -- undotree
        ["<leader>u"] = { vim.cmd.UndotreeToggle, "toggle undotree", opts = { nowait = true } }
    }
}

-- (`-')    (`-')  _<-.(`-')                             _    <-. (`-')_ (`-')  _ 
-- ( OO).-> (OO ).-/ __( OO)     .->     <-.      <-.   (_)      \( OO) )( OO).-/ 
-- /    '._ / ,---. '-'---.\,--.(,--. (`-')-----,--. )  ,-(`-',--./ ,--/(,------. 
-- |'--...__| \ /`.\| .-. (/|  | |(`-'(OO|(_\---|  (`-')| ( OO|   \ |  | |  .---' 
-- `--.  .--'-'|_.' | '-' `.|  | |(OO )/ |  '--.|  |OO )|  |  |  . '|  |(|  '--.  
--    |  | (|  .-.  | /`'.  |  | | |  \\_)  .--(|  '__ (|  |_/|  |\    | |  .--'  
--    |  |  |  | |  | '--'  \  '-'(_ .' `|  |_) |     |'|  |'-|  | \   | |  `---. 
--    `--'  `--' `--`------' `-----'     `--'   `-----' `--'  `--'  `--' `------' 
M.tabufline = {
    n = {
        -- buffers
        ["<leader>q"] = { "<cmd>bp<bar>sp<bar>bn<bar>bd<CR>", "close buffer"} ,
        -- tabs
        ["<leader>tt"] = { "<cmd>tabnew<CR>", "new tab (window)"},
        ["<leader>tn"] = { "<cmd>tabnext<CR>", "next tab (window)"},
        ["<leader>tp"] = { "<cmd>tabprevious<CR>", "prev tab (window)"},
        ["<leader>tq"] = { "<cmd>tabclose<CR>", "close tab (window)"},
    }
}

-- <-. (`-')_     (`-') _    <-. (`-') (`-')       (`-') (`-')  _(`-')  _ 
--    \( OO) )   _(OO )(_)      \(OO )_( OO).-> <-.(OO ) ( OO).-/( OO).-/ 
-- ,--./ ,--,--.(_/,-.\,-(`-',--./  ,-./    '._ ,------,(,------(,------. 
-- |   \ |  \   \ / (_/| ( OO|   `.'   |'--...__|   /`. '|  .---'|  .---' 
-- |  . '|  |\   /   / |  |  |  |'.'|  `--.  .--|  |_.' (|  '--.(|  '--.  
-- |  |\    _ \     /_(|  |_/|  |   |  |  |  |  |  .   .'|  .--' |  .--'  
-- |  | \   \-'\   /   |  |'-|  |   |  |  |  |  |  |\  \ |  `---.|  `---. 
-- `--'  `--'   `-'    `--'  `--'   `--'  `--'  `--' '--'`------'`------' 
M.nvimtree = {
    n = {
        ["<leader>ft"] = { "<cmd>NvimTreeFocus<CR>", "focus nvim tree"},
        ["<leader>fe"] = { "<cmd>NvimTreeToggle<CR>", "toggle nvim tree"},
    }
}

-- (`-')     (`-')  _  (`-')<-. (`-')   _    <-. (`-')_(`-')  _          
-- ( OO).->  ( OO).-<-.(OO )   \(OO )_ (_)      \( OO) (OO ).-/   <-.    
-- /    '._ (,------,------,,--./  ,-.),-(`-',--./ ,--// ,---.  ,--. )   
-- |'--...__)|  .---|   /`. |   `.'   || ( OO|   \ |  || \ /`.\ |  (`-') 
-- `--.  .--(|  '--.|  |_.' |  |'.'|  ||  |  |  . '|  |'-'|_.' ||  |OO ) 
--    |  |   |  .--'|  .   .|  |   |  (|  |_/|  |\    (|  .-.  (|  '__ | 
--    |  |   |  `---|  |\  \|  |   |  ||  |'-|  | \   ||  | |  ||     |' 
--    `--'   `------`--' '--`--'   `--'`--'  `--'  `--'`--' `--'`-----'  
M.nvterm = {
    n = {
        ["<C-t>"] = { "<cmd>ToggleTerm<CR>", "toggle terminal"}
    },

    t = {
        ["<C-t>"] = { "<cmd>ToggleTerm<CR>", "toggle terminal"},
        ["<C-k>"] = { "<C-\\><C-n><C-w>k<C-w>l", "exit terminal mode"}
    }
}

--  _ .-') _     ('-.      _ (`-.  
-- ( (  OO) )   ( OO ).-. ( (OO  ) 
--  \     .'_   / . --. /_.`     \ 
--  ,`'--..._)  | \-.  \(__...--'' 
--  |  |  \  '.-'-'  |  ||  /  | | 
--  |  |   ' | \| |_.'  ||  |_.' | 
--  |  |   / :  |  .-.  ||  .___.' 
--  |  '--'  /  |  | |  ||  |      
--  `-------'   `--' `--'`--'      
M.dap = {
    n = {
        ["<leader>b"] = {
            function()
            require("dap").toggle_breakpoint()
            end,
            "DAP: Toggle Breakpoint"
        },
        ["<leader>db"] = {
            function()
            require("dap").continue()
            end,
            "DAP: Continue"
        },
        ["<leader>dc"] = {
            function()
            require("dap").continue()
            end,
            "DAP: Continue"
        },
        ["<leader>dbq"] = {
            function()
            require("dap").terminate()
            end,
            "DAP: Quit Debugging"
        },
        -- ["<leader>dbo"] = {
        --     function()
        --     require("dap").step_out()
        --     end,
        --     "DAP: Step Out"
        -- },
        ["<leader>di"] = {
            function()
            require("dap").step_into()
            end,
            "DAP: Step Into"
        },
        ["<leader>do"] = {
            function()
            require("dap").step_over()
            end,
            "DAP: Step Over"
        },
    }
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
    n = {
        ["<leader>se"] = { "<cmd>SymbolsOutline<CR>", "toggle nvim outline bar"},
    }
}

--  (`-').-> _    _(`-')   (`-')  <-.(`-') (`-')  _   (`-')  
--  ( OO)_  (_)  ( (OO ).->( OO).-/__( OO) (OO ).-/<-.(OO )  
-- (_)--\_) ,-(`-'\    .'_(,------'-'---.\ / ,---. ,------,) 
-- /    _ / | ( OO'`'-..__)|  .---| .-. (/ | \ /`.\|   /`. ' 
-- \_..`--. |  |  |  |  ' (|  '--.| '-' `.)'-'|_.' |  |_.' | 
-- .-._)   (|  |_/|  |  / :|  .--'| /`'.  (|  .-.  |  .   .' 
-- \       /|  |'-|  '-'  /|  `---| '--'  /|  | |  |  |\  \  
--  `-----' `--'  `------' `------`------' `--' `--`--' '--' 
M.sidebar = {
    n = {
        ["<leader>bt"] = { "<cmd>SidebarNvimFocus<CR>", "focus nvim bar"},
        ["<leader>be"] = { "<cmd>SidebarNvimToggle<CR>", "toggle nvim bar"},
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

--                                                                           <-. (`-') <-. (`-')_                                    _(`-')    
--      .->     <-.         .->          _            .->     <-.       .->     \(OO )_   \( OO) )          <-.         .->     <-. ( (OO ).-> 
-- ,--.(,--. (`-')-----(`-')----. (`-')  \-,-----(`-')----. ,--. ) ,--.(,--. ,--./  ,-.,--./ ,--/ (`-')  (`-')-----(`-')----. ,--. ) \    .'_  
-- |  | |(`-'(OO|(_\---( OO).-.  '( OO).->|  .--.( OO).-.  '|  (`-'|  | |(`-'|   `.'   |   \ |  | ( OO).-(OO|(_\---( OO).-.  '|  (`-''`'-..__) 
-- |  | |(OO )/ |  '--.( _) | |  (,------/_) (`-'( _) | |  ||  |OO |  | |(OO |  |'.'|  |  . '|  |(,------./ |  '--.( _) | |  ||  |OO |  |  ' | 
-- |  | | |  \\_)  .--' \|  |)|  |`------||  |OO )\|  |)|  (|  '__ |  | | |  |  |   |  |  |\    | `------'\_)  .--' \|  |)|  (|  '__ |  |  / : 
-- \  '-'(_ .' `|  |_)   '  '-'  '      (_'  '--'\ '  '-'  '|     |\  '-'(_ .|  |   |  |  | \   |          `|  |_)   '  '-'  '|     ||  '-'  / 
--  `-----'     `--'      `-----'          `-----'  `-----' `-----' `-----'  `--'   `--`--'  `--'           `--'      `-----' `-----'`------'  
M.ufo = {
    n = {
        ["<leader>sf"] = { "<leader>za", "scope fold"},
        ["<leader>so"] = { "<leader>zO", "open fold"},
        ["<leader>sa"] = {
            function()
                require("ufo").openAllFolds()
            end,
            "open all folds"
        },
        ["<leader>sc"] = {
            function()
                require("ufo").closeAllFolds()
            end,
            "close all folds"
        }
    }
}

--  (`-').->(`-')  _   (`-') _  (`-')                   <-. (`-')_ 
--  (OO )__ (OO ).-/<-.(OO ) \-.(OO )    .->       .->     \( OO) )
-- ,--. ,'-'/ ,---. ,------,)_.'    (`-')----.(`-')----.,--./ ,--/ 
-- |  | |  || \ /`.\|   /`. (_...--'( OO).-.  ( OO).-.  |   \ |  | 
-- |  `-'  |'-'|_.' |  |_.' |  |_.' ( _) | |  ( _) | |  |  . '|  |)
-- |  .-.  (|  .-.  |  .   .|  .___.'\|  |)|  |\|  |)|  |  |\    | 
-- |  | |  ||  | |  |  |\  \|  |      '  '-'  ' '  '-'  |  | \   | 
-- `--' `--'`--' `--`--' '--`--'       `-----'   `-----'`--'  `--' 
M.harpoon = {
    n = {
        ["<leader>ht"] = { "<cmd> Telescope harpoon marks <CR>", "find harpoon marks" },

        ["<leader>hh"] = {
            function()
                require("harpoon.ui").toggle_quick_menu()
            end,
            "toggle harpoon menu",
        },

        ["<leader>ha"] = {
            function()
                require("harpoon.mark").add_file()
            end,
            "harpoon file",
        },

        -- navigation --
        ["<leader>hf"] = {
            function()
                require("harpoon.ui").nav_file(1)
            end,
            "harpoon 1",
        },

        ["<leader>hd"] = {
            function()
                require("harpoon.ui").nav_file(2)
            end,
            "harpoon 2",
        },

        ["<leader>hs"] = {
            function()
                require("harpoon.ui").nav_file(3)
            end,
            "harpoon 3",
        },

        ["<leader>hr"] = {
            function()
                require("harpoon.ui").nav_file(4)
            end,
            "harpoon 4",
        },

        ["<leader>he"] = {
            function()
                require("harpoon.ui").nav_file(5)
            end,
            "harpoon 5",
        },

        ["<leader>hw"] = {
            function()
                require("harpoon.ui").nav_file(6)
            end,
            "harpoon 6",
        },

    },
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
    n = {
        ["fw"] = { "<cmd>HopWord<CR>"},
        ["fj"] = { "<cmd>HopWordAC<CR>"},
        ["fk"] = { "<cmd>HopWordBC<CR>"},
        ["fl"] = { "<cmd>HopWordCurrentLine<CR>"},
        ["fh"] = { "<cmd>HopLineStart<CR>"},
        ["fp"] = { "<cmd>HopPattern<CR>"},
    }
}

--              ('-.     .-') _     ('-.  ) (`-.      
--             ( OO ).-.(  OO) )  _(  OO)  ( OO ).    
--  ,--.       / . --. //     '._(,------.(_/.  \_)-. 
--  |  |.-')   | \-.  \ |'--...__)|  .---' \  `.'  /  
--  |  | OO ).-'-'  |  |'--.  .--'|  |      \     /\  
--  |  |`-' | \| |_.'  |   |  |  (|  '--.    \   \ |  
-- (|  '---.'  |  .-.  |   |  |   |  .--'   .'    \_) 
--  |      |   |  | |  |   |  |   |  `---. /  .'.  \  
--  `------'   `--' `--'   `--'   `------''--'   '--' 
-- vimtex
M.vimtex = {
    n = {
        ["<leader>lc"] = { "<cmd>VimtexCompile<CR>", "Vimtex Compile" },
        ["<leader>lv"] = { "<cmd>VimtexView<CR>", "Vimtex View" },
        ["<leader>lq"] = { "<cmd>VimtexStop<CR>", "Vimtex Stop" }
    }
}

--   (`\ .-') /`   ('-. .-. .-')  _ .-') _     ('-.        (`-.   
--    `.( OO ),' _(  OO)\  ( OO )( (  OO) )  _(  OO)     _(OO  )_ 
-- ,--./  .--.  (,------.;-----.\ \     .'_ (,------.,--(_/   ,. \
-- |      |  |   |  .---'| .-.  | ,`'--..._) |  .---'\   \   /(__/
-- |  |   |  |,  |  |    | '-' /_)|  |  \  ' |  |     \   \ /   / 
-- |  |.'.|  |_)(|  '--. | .-. `. |  |   ' |(|  '--.   \   '   /, 
-- |         |   |  .--' | |  \  ||  |   / : |  .--'    \     /__)
-- |   ,'.   |   |  `---.| '--'  /|  '--'  / |  `---.    \   /    
-- '--'   '--'   `------'`------' `-------'  `------'     `-'     
M.web = {
    n = {
        ["<leader>wp"] = { "<cmd>BrowserPreview<CR>", "Web preview" }
    }
}
return M
