local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "window up" },

    ["<F6>"] = { "<cmd>CompilerOpen<CR>", "Open compiler" },
    ["<S-F6>"] = {
      "<cmd>CompilerStop<CR>"
      .. "<cmd>CompilerRedo<CR>",
      "Redo last selected option"
    },
    ["<S-F7>"] = { "<cmd>CompilerToggleResults<CR>", "Toggle compiler results" },

    ["<F5>"] = { function() require("dap").continue() end, "Continue" },
    ["<F10>"] = { function() require("dap").step_over() end, "Step Over" },
    ["<F11>"] = { function() require("dap").step_into() end, "Step Into" },
    ["<F12>"] = { function() require("dap").step_out() end, "Step Out" },

    ["<leader>dB"] = { function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, "Breakpoint Condition" },
    ["<leader>db"] = { function() require("dap").toggle_breakpoint() end, "Toggle Breakpoint" },
    ["<leader>da"] = { function() require("dap").continue({ before = get_args }) end, "Run with Args" },
    ["<leader>dC"] = { function() require("dap").run_to_cursor() end, "Run to Cursor" },
    ["<leader>dg"] = { function() require("dap").goto_() end, "Go to line (no execute)" },
    ["<leader>dj"] = { function() require("dap").down() end, "Down" },
    ["<leader>dk"] = { function() require("dap").up() end, "Up" },
    ["<leader>dl"] = { function() require("dap").run_last() end, "Run Last" },
    ["<leader>dp"] = { function() require("dap").pause() end, "Pause" },
    ["<leader>dr"] = { function() require("dap").repl.toggle() end, "Toggle REPL" },
    ["<leader>ds"] = { function() require("dap").session() end, "Session" },
    ["<leader>dt"] = { function() require("dap").terminate() end, "Terminate" },
    ["<leader>dw"] = { function() require("dap.ui.widgets").hover() end, "Widgets" },

    ["gD"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true }},
    ["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true }}
  }
}

return M
