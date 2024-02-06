return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- General
				null_ls.builtins.formatting.prettier,

				-- Lua
				null_ls.builtins.formatting.stylua,

				-- JS/TS
				null_ls.builtins.formatting.eslint,
				null_ls.builtins.diagnostics.eslint_d,

				-- C/C++
				null_ls.builtins.formatting.clang_format,

				-- Rust
				null_ls.builtins.formatting.rustfmt,

				-- Python
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.diagnostics.flake8,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
