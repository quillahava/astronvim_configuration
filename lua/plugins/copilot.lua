return {
  "github/copilot.vim",
  event = "InsertEnter",
  config = function()
    -- Accept suggestion with Alt-g
    vim.keymap.set("i", "<M-g>", 'copilot#Accept("<CR>")', { expr = true, silent = true, replace_keycodes = false })

    -- Cycle through Copilot suggestions
    vim.keymap.set("i", "<M-.>", 'copilot#Next()', { expr = true, silent = true })
    vim.keymap.set("i", "<M-,>", 'copilot#Previous()', { expr = true, silent = true })

    -- Clear Copilot suggestion
    vim.keymap.set("i", "<M-x>", 'copilot#Dismiss()', { expr = true, silent = true })

    -- Disable default <Tab> mapping
    vim.g.copilot_no_tab_map = true
  end,
}
