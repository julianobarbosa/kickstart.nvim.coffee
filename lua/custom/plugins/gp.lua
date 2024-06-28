-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {{{ gp.nvim
  'robitx/gp.nvim',
  config = function()
    require('gp').setup {
      cmd_prefix = 'Gp',
      openai_api_key = os.getenv 'OPENAI_API_KEY',
      openai_api_endpoint = os.getenv 'OPENAI_API_BASE_FULL',
    }
  end,
  cmd = {
    'GpChatNew',
    'GpRewrite',
    'GpAppend',
    'GpPrepend',
    'GpEnew',
    'GpPopup',
  },
  lazy = true,
  -- }}}
}
