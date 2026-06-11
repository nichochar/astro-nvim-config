-- This will run last in the setup process.

-- Typo guards: map shifted command names to their lowercase counterparts.
-- Passes through `!` (bang) and file args so e.g. `:W file`, `:Wq!` work too.
vim.api.nvim_create_user_command("W", "w<bang> <args>", { bang = true, nargs = "?", complete = "file" })
vim.api.nvim_create_user_command("Q", "q<bang>", { bang = true })
vim.api.nvim_create_user_command("Wq", "wq<bang> <args>", { bang = true, nargs = "?", complete = "file" })
vim.api.nvim_create_user_command("WQ", "wq<bang> <args>", { bang = true, nargs = "?", complete = "file" })
