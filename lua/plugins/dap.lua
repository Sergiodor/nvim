-- https://github.com/ecosse3/nvim/blob/master/lua/plugins/dap.lua


vim.pack.add({
  { src = "https://github.com/mfussenegger/nvim-dap" },

  { src = "https://github.com/williamboman/mason.nvim" },
  { src = "https://github.com/jay-babu/mason-nvim-dap.nvim" },

  { src = "https://github.com/theHamsta/nvim-dap-virtual-text" },

  { src = "https://github.com/rcarriga/nvim-dap-ui" },
  { src = "https://github.com/nvim-neotest/nvim-nio" },
})


local dap = require("dap")

local js_debug_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js"

dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    args = { js_debug_path, "${port}" },
  }
}


dap.configurations.javascript = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
  {
    type = "pwa-node",
    request = "attach",
    name = "Attach to process",
    processId = require("dap.utils").pick_process,
    cwd = "${workspaceFolder}",
  },
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch Test Current File (pwa-node with jest)",
    cwd = vim.fn.getcwd(),
    runtimeArgs = { "${workspaceFolder}/node_modules/.bin/jest" },
    runtimeExecutable = "node",
    args = { "${file}", "--coverage", "false" },
    rootPath = "${workspaceFolder}",
    sourceMaps = true,
    console = "integratedTerminal",
    internalConsoleOptions = "neverOpen",
    skipFiles = { "<node_internals>/**", "node_modules/**" },
  },
}



require("nvim-dap-virtual-text").setup()
vim.g.dap_virtual_text = true



-- ╭──────────────────────────────────────────────────────────╮
-- │ Icons                                                    │
-- ╰──────────────────────────────────────────────────────────╯
vim.fn.sign_define("DapBreakpoint", { text = "🔵", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointRejected", { text = "🔴", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapConditionalBreakpoint", { text = "🟡", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "🟢", texthl = "", linehl = "", numhl = "" })



local dapui = require("dapui")
dapui.setup({
  icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
  controls = {
    icons = {
      pause = "⏸",
      play = "▶️",
      step_into = "⏎",
      step_over = "⏭",
      step_out = "⏮",
      step_back = "◀️",
      run_last = "▶▶",
      terminate = "⏹",
      disconnect = "⏏",
    },
  },
})

dap.listeners.before.attach["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.launch["dapui_config"] = function()
  dapui.open()
end
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end


---------------------------------------------------
-- KEYMAPS
---------------------------------------------------
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<leader>ds", dap.continue, { desc = "Start/Continue Debugging" })
vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "Terminate Debugging" })
vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step Over" })
vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step Into" })
vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Step Out" })
vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "Open REPL" })
vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "Run Last Session" })
vim.keymap.set("n", "<leader>duo", dapui.open, { desc = "Open DAP UI" })
vim.keymap.set("n", "<leader>duc", dapui.close, { desc = "Close DAP UI" })
vim.keymap.set("n", "<leader>dut", dapui.toggle, { desc = "Toggle DAP UI" })
--vim.keymap.set("n", "<leader>duw", dapui.float_element('watches', { enter = true }), { desc = "Watches DAP UI" })
--vim.keymap.set("n", "<leader>dus", dapui.float_element('scopes', { enter = true }), { desc = "Scopes DAP UI" })
--vim.keymap.set("n", "<leader>dus", dapui.float_element('repl', { enter = true }), { desc = "REPL DAP UI" })

