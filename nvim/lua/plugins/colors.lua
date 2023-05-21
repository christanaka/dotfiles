return {
  {
    dir = '~/.config/nvim-christanaka/colors/dracula_pro',
    lazy = false,
    priority = 1000,
    config = function ()
      vim.cmd([[set termguicolors]])
      vim.cmd([[syntax enable]])
      --vim.cmd([[highlight Normal ctermbg=NONE]])
      --vim.cmd([[highlight nonText ctermbg=NONE]])
      vim.cmd([[let g:dracula_colorterm = 0]])
      vim.cmd([[colorscheme dracula_pro]])
    end,
  }
}
