return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            follow = true,
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")

      function vim.getVisualSelection()
        vim.cmd('noau normal! "vy"')
        local text = vim.fn.getreg('v')
        vim.fn.setreg('v', {})

        text = string.gsub(text, "\n", "")
        if #text > 0 then
          return text
        else
          return ''
        end
      end

      local keymap = vim.keymap.set
      local tb = require('telescope.builtin')
      local opts = { noremap = true, silent = true }

      keymap('n', '<space>g', ':Telescope current_buffer_fuzzy_find<cr>', opts)
      keymap('v', '<space>g', function()
        local text = vim.getVisualSelection()
        tb.current_buffer_fuzzy_find({ default_text = text })
      end, opts)

      keymap('n', '<space>G', ':Telescope live_grep<cr>', opts)
      keymap('v', '<space>G', function()
        local text = vim.getVisualSelection()
        tb.live_grep({ default_text = text })
      end, opts)
    end,
  },
}
