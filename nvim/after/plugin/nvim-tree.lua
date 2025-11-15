-- Minimal nvim-tree setup
require("nvim-tree").setup({
    view = {
        width = 28,                   -- Set the width of the tree
        side = "left",                -- Set the side (left or right)
    },
    renderer = {
        highlight_git = true,          -- Highlight files that are tracked by git
        icons = {
            show = {
                git = true,             -- Show git icons
                folder = true,          -- Show folder icons
                file = true,            -- Show file icons
                folder_arrow = true,    -- Show folder arrow icons
            },
            glyphs = {
                default = "",         -- Default file icon (adjust as needed)
                symlink = "",         -- Symlink icon
                folder = {
                    arrow_open = "",  -- Folder open icon
                    arrow_closed = "", -- Folder closed icon
                },
            }
        },
    },
    filters = {
        dotfiles = false,              -- Show dotfiles
        custom = {},                   -- Can specify additional file types to filter
    },
    actions = {
        open_file = {
            quit_on_open = true,        -- Close the tree when opening a file
        },
    },
    diagnostics = {
        enable = true,                 -- Enable diagnostics for the files
        show_on_dirs = false,          -- Don’t show diagnostics on directories
        debounce_delay = 50,           -- Delay for diagnostics update
    },
    git = {
        enable = true,                 -- Enable git integration
        ignore = false,                -- Don’t ignore untracked files
        timeout = 500,                 -- Timeout for git status checks
    },
    update_focused_file = {
        enable = true,                 -- Highlight the focused file in the tree
        update_cwd = true,             -- Update current working directory when changing files
    },
    respect_buf_cwd = true,           -- Respect the buffer's current working directory
})
