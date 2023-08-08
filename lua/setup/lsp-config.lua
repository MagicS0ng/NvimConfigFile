-- local saga_status, saga = pcall(require, "lspsaga")
-- if not saga_status then
--   return
-- end
-- saga.init_lsp_saga({
--   move_in_saga = { prev = "<C-k>", next = "<C-j>"},
--   finder_action_keys = {
--     open = "<CR>",
--   },
--   definition_action_keys = {
--     editr = "<CR>",
--   },
-- })

local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
	return
end
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local protocol = require("vim.lsp.protocol")
--local on_attach = function(client, bufnr)
--  if client.server_capabilities.documentFormattingProvider then
--    vim.api.nvim_command [[augroup Format]]
--    vim.api.nvim_command [[autocmd! * <buffer>]]
--    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
--    vim.api.nvim_command [[augroup END]]
--  end
--end

nvim_lsp.pyright.setup({
	--on_attach = on_attach,
	capabilities = capabilities,
	filetype = { "python" },
	cmd = { "pyright-langserver", "--stdio" },
})

nvim_lsp.texlab.setup({
	cmd = { "texlab" },
	filetype = { "tex", "plaintex", "bib" },
	settings = {
		texlab = {
			auxDirectory = ".",
			bibtexFormatter = "texlab",
			build = {
				args = { "-pdf", "-interaction=nonstopmode", "-synctex=2", "%f" },
				executable = "latexmk",
				forwardSearchAfter = false,
				onSave = false,
			},
			chktex = {
				onEdit = false,
				onOpenAndSave = false,
			},
			diagnosticsDelay = 301,
			formatterLineLength = 81,
			forwardSearch = {
				args = {},
			},
			latexFormatter = "latexindent",
			latexindent = {
				modifyLineBreaks = false,
			},
		},
	},
})

nvim_lsp.clangd.setup({
	capabilities = capabilities,
	cmd = { "clangd" },
	filetype = { "h", "c", "cpp", "objc", "objcpp", "cuda", "proto" },
	single_file_support = true,
})

nvim_lsp.lua_ls.setup({
	--on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
--vim.keymap.set("n", "<leader>f", vim.diagnostic.open_float)
--vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
--vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
--vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set("n", "<leader>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<leader>f", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})
