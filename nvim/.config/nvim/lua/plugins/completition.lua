local cmp = require("cmp")

cmp.setup({
	
	window = {
		completition = cmp.config.window.bordered()
	},
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping.confirm({ select = true }),
		-- select nex item: idk if i want it 
	}),

	sources = {
		{ name = "nvim_lsp" }, 
		{ name = "buffer" },
		{ name = "path" },
	},
})

