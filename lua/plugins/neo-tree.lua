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
    require("neo-tree").setup({
      close_if_last_window = false,
      git_status = {
        git_base = "master", -- Set the default git base to "master"
      },
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
    require("neo-tree.sources.manager").focus("filesystem")
  end,
}
