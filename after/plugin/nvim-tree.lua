-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
    renderer = {
       icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = true,
                git = true,
                modified = false,
            },
            glyphs = {
                folder = {
                    arrow_closed = " ",
                    arrow_open = "",
                },
                git = {
                    unstaged = "M",
                    staged = " ",
                    unmerged = " ",
                    renamed = " ",
                    untracked = "U",
                    deleted = " ",
                    ignored = " ",
                }
            }
        }
    }
})

local function open_nvim_tree()
    require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
