return {
  -- {
  --   "mattn/calendar-vim",
  -- },
  -- {
  --   "DougBeney/pickachu",
  -- },
  {
    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    config = function()
      -- Setup orgmode
      require("orgmode").setup({
        org_agenda_files = "~/projects/orgfiles/**/*",
        org_default_notes_file = "~/projects/orgfiles/refile.org",
        calendar_week_start_day = 0
      })

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },
}
