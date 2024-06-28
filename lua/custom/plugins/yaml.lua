-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Plugin for LSP support (YAML)
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').yamlls.setup {
        settings = {
          yaml = {
            schemas = {
              kubernetes = '*.yaml',
              ['http://json.schemastore.org/github-workflow'] = '.github/workflows/*',
              ['http://json.schemastore.org/github-action'] = '.github/action.{yml,yaml}',
              ['http://json.schemastore.org/ansible-stable-2.9'] = 'playbook.{yml,yaml}',
              ['http://json.schemastore.org/ansible-stable-2.9'] = 'roles/tasks/*.{yml,yaml}',
              ['http://json.schemastore.org/prettierrc'] = '.prettierrc.{yml,yaml}',
              ['http://json.schemastore.org/kustomization'] = 'kustomization.{yml,yaml}',
              ['http://json.schemastore.org/chart'] = 'Chart.{yml,yaml}',
              ['http://json.schemastore.org/helmfile'] = 'helmfile.{yml,yaml}',
              ['http://json.schemastore.org/kubevirt'] = 'kubevirt.{yml,yaml}',
              ['http://json.schemastore.org/keda'] = 'keda.{yml,yaml}',
            },
            format = { enable = true },
            validate = true,
            completion = true,
          },
        },
      }
    end,
  },
}
