return {
  {
    'justinmk/molokai',
    lazy = false,
    priorty = 1000,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priorty = 1000,
    config = function()
      vim.cmd 'colorscheme tokyonight-moon'
    end,
  },
  {
    'lifepillar/vim-solarized8',
    lazy = false,
    priorty = 1000,
    config = function()
      --vim.cmd 'colorscheme solarized8_high'
    end,
  },
}
