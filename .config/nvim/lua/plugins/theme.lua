return {

  {
    -- Match colorscheme to base16-shell theme
    -- Use this over tinted-theming/base16-vim for lualine compatibility
    "RRethy/nvim-base16",
    lazy = false,
    priority = 1000,
    config = function()
      local current_theme_name = os.getenv("BASE16_THEME")
      if current_theme_name and vim.g.colors_name ~= "base16-" .. current_theme_name then
        vim.g.base16colorspace = 256
        vim.cmd.colorscheme("base16-" .. current_theme_name)
      end
    end,
  },

}
