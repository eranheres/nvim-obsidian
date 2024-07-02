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
map({ "n", "v" }, "<leader>oT", "<cmd>ObsidianTemplate<cr>", { desc = "Insert template" })
map({ "n", "v" }, "<leader>of", function () gtd.create.fly_task() end , { desc = "New fly task" })
map({ "n"      }, "<leader>ot", function () gtd.create.new_task() end , { desc = "Insert task" })
map({ "n", "v" }, "<leader>om", function () gtd.create.meeting_note() end , { desc = "New meeting note" })
map({ "n", "v" }, "<leader>os", function () gtd.search.search_task({}) end , { desc = "Search task" })

map({ "n", "v" }, "<leader>cv", "<cmd>write<cr><cmd>source<cr>" , { desc = "Source file" })
