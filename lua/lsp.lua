-- Uncomment the following line to enable debugging
-- vim.lsp.set_log_level("debug")
local lspconfig = require("lspconfig")

local on_attach = function(client, bufnr)

        local bufopts = {noremap=true, silent=true, buffer = bufnr}

        vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
        vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, bufopts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", "ge", vim.diagnostic.open_float, bufopts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)

        vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, bufopts)
        vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, bufopts)

        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, bufopts)
        end


lspconfig.gopls.setup{
        on_attach = on_attach,
}

lspconfig.tsserver.setup{
        on_attach = on_attach,
}

lspconfig.pyright.setup{
        on_attach = on_attach,
}
