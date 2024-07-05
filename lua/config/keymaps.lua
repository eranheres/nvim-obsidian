-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
require("common.config.common-keymaps")

require("which-key").setup({})
local map = vim.keymap.set

map("n", "gf", function()
  if require("obsidian").util.cursor_on_markdown_link() then
    return "<cmd>ObsidianFollowLink<CR>"
  else
    return "gf"
  end
end, { noremap = false, expr = true })
map("n", "<leader>oc", function() return require("gtd.utils").task_complete() end, { desc = "Toggle checkbox" })

local gtd = require("gtd")
map({ "n", "v" }, "<leader>onT", "<cmd>ObsidianTemplate<cr>", { desc = "Insert template" })
map({ "n", "v" }, "<leader>ont", function () require("gtd.create").fly_task() end , { desc = "New fly task" })
map({ "n", "v" }, "<leader>onm", function () require("gtd.create").meeting_note() end , { desc = "New meeting note" })

map({ "n", "v" }, "<leader>ost", function () require("gtd.search").search_task({}) end , { desc = "Search task" })

map({ "n", "v" }, "<leader>otc", function () require("gtd.modifyline").complete_task({}) end , { desc = "Complete task" })
map({ "n", "v" }, "<leader>otn", function () require("gtd.createline").new_task() end , { desc = "New task" })
map({ "n", "v" }, "<leader>otq", function () require("gtd.createline").new_quick_task() end , { desc = "New quick task" })

map({ "n", "v" }, "<leader>cv", "<cmd>write<cr><cmd>source<cr>" , { desc = "Source file" })

