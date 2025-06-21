-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--  https://github.com/LazyVim/LazyVim/discussions/3746
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  group = vim.api.nvim_create_augroup("BufferSwitch", {}),
  desc = "BufferSwitch",
  callback = function()
    local buffers = {}
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
      if vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].buftype == "" then
        table.insert(buffers, buf)
      end
    end

    for k, v in ipairs(buffers) do
      vim.keymap.set("n", "<localleader>" .. k, "<cmd>buffer " .. v .. "<cr>", { desc = "GoToBuffer ".. k })
    end
  end,
})
