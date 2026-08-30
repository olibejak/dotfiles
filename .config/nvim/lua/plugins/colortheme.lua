return {
  "vague-theme/vague.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- initial load with custom Synthwave palette
    require("vague").setup({
      transparent = true,
      on_highlights = function(hl, c)
        hl.Visual = {         -- visual mode
          bg = c.visual,
          fg = '#000000',
          bold = true,
        }
      end,
      colors = {
        bg = '#000000',
        inactiveBg = '#0a0a0a',
        fg = '#dad9c7',

        -- UI
        floatBorder = '#19cde6',
        line = '#111115',
        visual = '#2186ec',
        search = '#f85a21',

        -- Syntax
        comment = '#7f7094',
        builtin = '#2f9ded',
        func = '#f6188f',
        string = '#1ebb2b',
        number = '#f85a21',
        property = '#12c3e2',
        constant = '#f841a0',
        parameter = '#dad9c7',
        operator = '#f97137',
        keyword = '#19cde6',
        type = '#fdf454',
        
        -- Diagnostic / Git
        error = '#f6188f',
        warning = '#fdf834',
        hint = '#12c3e2',
        plus = '#25c141',
        delta = '#fdf834',
      },
    })
    
    vim.cmd("colorscheme vague")

    local is_transparent = true

    local toggle_transparency = function()
      is_transparent = not is_transparent

      if not is_transparent then
        local hl_groups = {
          "Normal", "NormalNC", "SignColumn", "LineNr",
          "EndOfBuffer", "NonText", "FoldColumn"
        }
        for _, name in ipairs(hl_groups) do
          local hl = vim.api.nvim_get_hl(0, { name = name })
          hl.bg = '#000000'
          --hl.ctermbg = nil
          vim.api.nvim_set_hl(0, name, hl)
        end
        vim.notify("Background: Opaque", vim.log.levels.INFO)
      else
        -- load again
        vim.cmd("colorscheme vague")
        vim.notify("Background: Transparent", vim.log.levels.INFO)
      end
    end

    -- set keymap
    vim.keymap.set('n', '<leader>bg', toggle_transparency, {
      noremap = true,
      silent = true,
      desc = "Toggle background transparency"
    })

  end
  
}
