return {
  {
    "github/copilot.vim",
    event = "VeryLazy",
    init = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
    end,
  },
  {
    -- AstroNvim v6 uses blink.cmp as the completion engine (nvim-cmp is gone).
    -- blink keymaps are lists of commands tried in order; a function that
    -- returns true stops the chain, otherwise it falls through to the next.
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = {
          -- 1. If Copilot has a visible suggestion, accept it
          function()
            local copilot_keys = vim.fn["copilot#Accept"] ""
            if copilot_keys ~= "" then
              vim.api.nvim_feedkeys(copilot_keys, "i", true)
              return true
            end
          end,
          -- 2. jump forward in a snippet, 3. select next item, 4. plain <Tab>
          "snippet_forward",
          "select_next",
          "fallback",
        },
        ["<S-Tab>"] = {
          "snippet_backward",
          "select_prev",
          "fallback",
        },
      },
    },
  },
}
