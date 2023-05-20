--[[
External deps: 
* ripgrep (https://github.com/BurntSushi/ripgrep)
--]]

return {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.1',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "telescope find files" },
    { "<C-p>", "<cmd>Telescope git_files<cr>", desc = "telescope git files" },
    { "<leader>ps", "<cmd>Telescope live_grep<cr>", desc = "telescope live grep" }
  }
 }
