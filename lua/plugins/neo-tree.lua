return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")
    local neotree = require("neo-tree");
    neotree.setup({
      close_if_last_window = false,
      filesystem = {
        follow_current_file = {
          enabled = true
        },
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        }
      }
    })

    vim.cmd("Neotree git_base=master")
    require("neo-tree.sources.manager").focus("filesystem")
  end,
}
