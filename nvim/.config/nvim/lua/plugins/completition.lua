local cmp = require("cmp")

cmp.setup({
	
	window = {
		completition = cmp.config.window.bordered()
	},
	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping.select_next_item()
	}),

	sources = {
		{ name = "nvim_lsp" }, 
		{ name = "buffer" },
		{ name = "path" }
	},
})

