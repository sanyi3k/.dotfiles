require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "dockerfile", "html", "java", "javascript", "json", "json5", "lua",
                        "markdown", "rust", "sql", "typescript", "vim", "yaml"},

  highlight = {
    enable = true,
  },
  indent = {
      enable = true,
  }
}
