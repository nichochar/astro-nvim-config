-- Migrated from .neoconf.json (neoconf was removed in AstroNvim v6).
-- Neovim 0.11+ auto-loads lsp/<server>.lua into vim.lsp.config[<server>].
-- Disable lua_ls's own formatter so StyLua handles Lua formatting.
return {
  settings = {
    Lua = {
      format = {
        enable = false,
      },
    },
  },
}
