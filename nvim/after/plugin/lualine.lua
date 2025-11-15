-- LuaLine
-- Pure black with subtle accents
local pure_black = {
    normal = {
        a = { bg = "#1f1f1f", fg = "#66ccff" },  -- soft blue
        b = { bg = "#0f0f0f", fg = "#999999" },
        c = { bg = "#0f0f0f", fg = "#ffffff" },
    },
    insert = {
        a = { bg = "#0f0f0f", fg = "#7fffbf" },  -- mint green
        b = { bg = "#0f0f0f", fg = "#999999" },
        c = { bg = "#0f0f0f", fg = "#ffffff" },
    },
    visual = {
        a = { bg = "#0f0f0f", fg = "#c27fff" },  -- soft purple
        b = { bg = "#0f0f0f", fg = "#999999" },
        c = { bg = "#0f0f0f", fg = "#ffffff" },
    },
    replace = {
        a = { bg = "#0f0f0f", fg = "#ff8080" },  -- soft red
        b = { bg = "#0f0f0f", fg = "#999999" },
        c = { bg = "#0f0f0f", fg = "#ffffff" },
    },
    command = {
        a = { bg = "#0f0f0f", fg = "#ffd580" },  -- warm gold
        b = { bg = "#0f0f0f", fg = "#999999" },
        c = { bg = "#0f0f0f", fg = "#ffffff" },
    },
    inactive = {
        a = { bg = "#0f0f0f", fg = "#555555" },
        b = { bg = "#0f0f0f", fg = "#555555" },
        c = { bg = "#0f0f0f", fg = "#555555" },
    },
}
require("lualine").setup({
    options = {
        theme = pure_black,      -- uses terminal or colorscheme style
        section_separators = "",
        component_separators = "",
        icons_enabled = true,
    },
})

