return {
    "barrett-ruth/live-server.nvim",
    build = "sudo npm install -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    opts = {},
    config = function()
        require("live-server").setup(opts)
        vim.keymap.set("n", "<leader>b", "<cmd>LiveServerToggle<CR>", { desc = "Toggle live server" })
    end,
}
