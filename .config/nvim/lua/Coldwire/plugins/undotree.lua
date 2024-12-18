return {
    "mbbill/undotree",
    lazy = false,
    config = function()
        vim.cmd([[
    if has("persistent_undo")
   let target_path = expand('~/.undodir')
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif
]])
        local keymap = vim.keymap
        keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", { desc = "Toggle undotree" })
    end,
}
