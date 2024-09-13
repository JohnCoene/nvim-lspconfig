local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = { 'vapour', '-lsp' },
    filetypes = { 'vapour', 'vp' },
    root_dir = function(fname)
      return util.find_git_ancestor(fname) or vim.loop.os_homedir()
    end,
    log_level = vim.lsp.protocol.MessageType.Warning,
  },
  docs = {
    description = [[
[Vapour](https://vapour.run) is a
typed superset of the
[R programming language](https://www.r-project.org)

The language installation comes with the LSP.
]],
    default_config = {
      root_dir = [[os_homedir]],
    },
  },
}
