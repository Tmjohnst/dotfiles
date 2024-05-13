function ToggleCatppuccin()
  if vim.g.colors_name == 'catppuccin-frappe' then
    vim.cmd('colorscheme catppuccin-latte')
  else
    vim.cmd('colorscheme catppuccin-frappe')
  end
end

return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("catppuccin-frappe")
    --    vim.keymap.set('n', '<C-l>', ':lua ToggleCatppuccin()<CR>', { noremap = true, silent = true })
  end,
}
