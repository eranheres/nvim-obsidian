-- bootstrap lazy.nvim, LazyVim and your plugins
-- Define an autocommand group to avoid duplication
local config_path = vim.fn.stdpath("config")
vim.g.pull_command = "(cd " .. config_path .. "&& git submodule update --recursive --remote)"
vim.fn.system(vim.g.pull_command)


require("config.lazy")
