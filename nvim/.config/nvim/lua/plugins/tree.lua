return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  keys = {
    { '<leader>pt', ':NvimTreeToggle<CR>', desc = 'Toggle file explorer' },
  },
  config = function()
    require('nvim-tree').setup({
      view = {
        side = 'left',
        width = 30,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    })
  end,
}
