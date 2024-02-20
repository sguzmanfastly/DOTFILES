local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = '/home/ivansegufer/.local/share/nvim/mason/packages/netcoredbg/libexec/netcoredbg/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
    env = {
      ASPNETCORE_ENVIRONMENT = function ()
        return vim.fn.input('Environment: ', "Development")
      end,
      ASPNETCORE_URLS = function ()
        return vim.fn.input('Urls: ', "http://localhost:5000;https://localhost:5001")
      end,
    },
    cwd = function()
      return vim.fn.getcwd()
    end,
  },
}

vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})
