return {
    "neovim/nvim-lspconfig",
    config = function()
        local lsp = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        lsp.lua_ls.setup({
            capabilities = capabilities,
        })

        lsp.elixirls.setup({
            capabilities = capabilities,
        })

        lsp.rust_analyzer.setup({
            capabilities = capabilities,
        })
    end,
}
