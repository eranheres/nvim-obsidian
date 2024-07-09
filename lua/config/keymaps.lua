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
map({ "n", "v" }, "<leader>ont", function () require("gtd.notes").fly_task() end , { desc = "New fly task" })
map({ "n", "v" }, "<leader>onm", function () require("gtd.notes").meeting_note() end , { desc = "New meeting note" })
map({ "n", "v" }, "<leader>onp", function () require("gtd.notes").project_note() end , { desc = "New project note" })

map({ "n", "v" }, "<leader>osoa", function () require("gtd.search").search_open_all() end , { desc = "Open all" })
map({ "n", "v" }, "<leader>oson", function () require("gtd.search").search_open_assignee() end , { desc = "Open assignee" })
map({ "n", "v" }, "<leader>osda", function () require("gtd.search").search_due_all() end , { desc = "Dua all" })
map({ "n", "v" }, "<leader>osdn", function () require("gtd.search").search_due_assignee() end , { desc = "Due assignee" })
map({ "n", "v" }, "<leader>osc",  function () require("gtd.tasks").color_due() end , { desc = "Color due" })

map({ "n", "v" }, "<leader>otc", function () require("gtd.tasks").complete_task() end , { desc = "Complete task" })
map({ "n", "v" }, "<leader>otn", function () require("gtd.tasks").new_task() end , { desc = "New task" })
map({ "n", "v" }, "<leader>otq", function () require("gtd.tasks").new_quick_task() end , { desc = "New quick task" })
map({ "n", "v" }, "<leader>ota", function () require("gtd.tasks").assigne_task() end , { desc = "Assign task" })
map({ "n", "v" }, "<leader>otd", function () require("gtd.tasks").set_due_date() end , { desc = "Set due date" })
map({ "n", "v" }, "<leader>otp", function () require("gtd.tasks").set_priority() end , { desc = "Set priority" })
map({ "n", "v" }, "<leader>ott", function () require("gtd.tasks").set_text() end , { desc = "Set task text" })
map({ "n", "v" }, "<leader>otl", function () require("gtd.tasks").add_log() end , { desc = "Add task log" })

map({ "n", "v" }, "<leader>cv", "<cmd>write<cr><cmd>source<cr>" , { desc = "Source file" })

