return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  opts = {
    -- Installed syntax
    ensure_installed = { 
      'bash', 'c', 'diff', 'luadoc', 'markdown', 'markdown_inline', 'query', 
      'vim', 'vimdoc', 'lua', 'python', 'javascript', 'typescript', 'regex', 
      'terraform', 'sql', 'dockerfile', 'toml', 'json', 'java', 'groovy', 
      'go', 'gitignore', 'graphql', 'yaml', 'make', 'cmake', 'tsx', 'css', 'html',
    },
    
    -- Autoinstal of the missing parsers 
    auto_install = true,

    -- Auto run for supported files 
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    
    -- Indent depends on type of syntax
    indent = {
      enable = true,
    },
  },
}
