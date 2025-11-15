local cmp = require("cmp")

cmp.setup({
    completion = {
        autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged }, -- auto trigger
    },

    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- confirm
        ["<C-Space>"] = cmp.mapping.complete(),            -- manually trigger
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    }),

    sources = {
        { name = "nvim_lsp" }, -- LSP suggestions
        { name = "path" },     -- path completion
        { name = "buffer" },   -- words from current file
    },
})
