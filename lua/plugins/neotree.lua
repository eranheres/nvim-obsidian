local conf = {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "kyazdani42/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "example",
    "gtd/basic",
  },
  -- Check what happens if all other sources are removed
  -- Check : use_default_mappings = false
  config = function()
    require("neo-tree").setup({
      sources = {
        "filesystem",
        "buffers",
        "git_status",
        "example",
        "basic",
      },
      example = {
        -- The config for your source goes here. This is the same as any other source, plus whatever
        -- special config options you add.
        --window = {...}
        --renderers = { ..}
        --etc
      },
      basic = {
      },
    })
  end,
}
--return conf
return {}
