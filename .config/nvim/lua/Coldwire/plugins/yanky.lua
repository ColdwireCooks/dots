return {
    "gbprod/yanky.nvim",
    config = function()
        require("yanky").setup({
            ring = {
                history_length = 50,
                storage = "memory",
            },
            preserve_cursor_position = {
                enabled = false,
            },
        })
        vim.keymap.set("n", "<leader>yn", "<Plug>(YankyCycleForward)")
        vim.keymap.set("n", "<leader>yp", "<Plug>(YankyCycleBackward)")
    end,
}
-- cycle through the yank history, only work after paste
