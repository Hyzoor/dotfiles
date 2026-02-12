
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"clangd",
		"cssls",
		"html",
		"ts_ls"
	}
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local servers = { "clangd", "cssls", "html", "ts_ls" }


for _, lsp in ipairs(servers) do
	vim.lsp.config(lsp, {capabilities = capabilities})
end
