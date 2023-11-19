local dap, dapui = require("dap"), require("dapui")
dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = '/home/admin/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}
dap.configurations.c = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        MIMode = 'gdb',
        miDebuggerPath = '/usr/bin/gdb',
        cwd = '${workspaceFolder}',
        args = {},
        program = "${fileDirname}/out/${fileBasenameNoExtension}",
    },
}
-- dap.configurations.cpp = dap.configurations.c
-- dap.configurations.rust = dap.configurations.c
dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
dap.listeners.before.disconnect["dapui_config"] = function() dapui.close() end
-- highlights and icons
vim.api.nvim_set_hl(0, 'DapBreakpoint', { ctermbg = 0, fg = '#993939', bg = '#31353f' })
vim.api.nvim_set_hl(0, 'DapLogPoint', { ctermbg = 0, fg = '#61afef', bg = '#31353f' })
vim.api.nvim_set_hl(0, 'DapStopped', { ctermbg = 0, fg = '#98c379', bg = '#31353f' })
vim.fn.sign_define('DapBreakpoint', { text='', texthl='DapBreakpoint', linehl='none', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text='ﳁ', texthl='DapBreakpoint', linehl='none', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='DapBreakpoint', linehl='none', numhl= 'DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text='', texthl='DapLogPoint', linehl='none', numhl= 'DapLogPoint' })
vim.fn.sign_define('DapStopped', { text='', texthl='DapStopped', linehl='none', numhl= 'DapStopped' })
