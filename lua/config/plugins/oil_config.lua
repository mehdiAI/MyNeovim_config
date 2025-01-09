return
{
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  --dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  config = function()
    require("oil").setup({
      options = {
        icons_enabled = true,
        theme = 'dracula',

      },
      sections = {
        lualine_a = {
          {
            'filename',
            path = 1,
          }
        }
      }
    })
  end
}
