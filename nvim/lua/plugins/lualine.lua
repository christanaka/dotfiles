return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local colors = {
      bg = '#2e2b3b'
    }
    local custom_dracula = require('lualine.themes.dracula')

    custom_dracula.normal.c.bg = colors.bg
    custom_dracula.insert.c.bg = colors.bg
    custom_dracula.visual.c.bg = colors.bg
    custom_dracula.replace.c.bg = colors.bg
    custom_dracula.command.c.bg = colors.bg
    custom_dracula.inactive.c.bg = colors.bg

    require('lualine').setup {
      options = {
        theme = custom_dracula,
        section_separators = '',
        component_separators = '',
      }
    }
  end
}
