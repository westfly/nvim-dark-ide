--https://rtuszik.github.io/KoalaKeys-Collection/lazyvim_keyboard_shortcuts_cheatsheet.html
return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                cpp = { "clang_format" },
                c = { "clang_format" },
            },
        },
    },
    {
        "folke/snacks.nvim",
        opts = {
            picker = {
                sources = {
                    files = { hidden = true },
                },
            },
        },
    },
    {
        -- https://github.com/LazyVim/LazyVim/discussions/39
        "saghen/blink.cmp",
        opts = {
            keymap = {
                ["<Tab>"] = {
                    function(cmp)
                        if cmp.snippet_active() then
                            return cmp.accept()
                        else
                            return cmp.select_and_accept()
                        end
                    end,
                    "snippet_forward",
                    "fallback",
                },
            },
        },
    },
}
