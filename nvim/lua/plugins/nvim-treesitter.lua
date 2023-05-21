return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  config = function ()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        -- Five listed should always be installed
        "c", "lua", "vim", "vimdoc", "query",
        "c_sharp",
        "javascript",
        "typescript",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
      },
    }
  end,
}
