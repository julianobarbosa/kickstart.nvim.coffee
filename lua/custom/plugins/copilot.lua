-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {{{ copilot
  'github/copilot.vim',
  lazy = false,
  config = function()
    -- Mapping tab is already used by NvChad
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_tab_fallback = ''
    -- The mapping is set to other key, see custom/lua/mappings
    -- or run <leader>ch to see copilot mapping section
    vim.keymap.set('i', '<C-y>', 'copilot#Accept("<CR>")', {
      expr = true,
      replace_keycodes = false,
    })
  end,
  -- }}}
}
