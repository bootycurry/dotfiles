-- Mason
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "pyright",
        "ts_ls",
    },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-----------------------------------------------------------
-- Override configs BEFORE enabling
-----------------------------------------------------------

-- LUA LS
vim.lsp.config("lua_ls", {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
        },
    },
})

-- PYRIGHT
vim.lsp.config("pyright", {
    capabilities = capabilities,
})

-- TYPESCRIPT (ts_ls replaces tsserver)
vim.lsp.config("ts_ls", {
    capabilities = capabilities,
})

-----------------------------------------------------------
-- Enable LSPs (auto attach on filetype)
-----------------------------------------------------------

vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("ts_ls")
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = { buffer = event.buf }

        -- Go to definition
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

        -- Go to declaration
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

        -- Hover (docs)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

        -- References
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

        -- Type definition
        vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, opts)

        -- Rename
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        -- Code actions
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

        -- Format
        vim.keymap.set("n", "<leader>fm", function()
            vim.lsp.buf.format { async = true }
        end, opts)

        -- Diagnostic float
        vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, opts)

        -- Previous diagnostic
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

        -- Next diagnostic
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    end,
})
