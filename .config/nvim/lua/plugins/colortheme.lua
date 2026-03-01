return {
  "vague-theme/vague.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- initial load
    require("vague").setup({
      transparent = false,
    })
    vim.cmd("colorscheme vague")

    local is_transparent = false

    -- function for bg transparency toggle
    local toggle_transparency = function()
      is_transparent = not is_transparent

      if is_transparent then
        local hl_groups = {
          "Normal", "NormalNC", "SignColumn", "LineNr", 
          "EndOfBuffer", "NonText", "FoldColumn"
        }
        for _, name in ipairs(hl_groups) do
          local hl = vim.api.nvim_get_hl(0, { name = name })
          hl.bg = nil
          hl.ctermbg = nil
          vim.api.nvim_set_hl(0, name, hl)
        end
        vim.notify("Background: Transparent", vim.log.levels.INFO)
      else
        -- load again
        vim.cmd("colorscheme vague")
        vim.notify("Background: Opaque", vim.log.levels.INFO)
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
