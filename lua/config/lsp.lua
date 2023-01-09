local api = vim.api

-- go
api.nvim_create_autocmd(
	"BufWritePre",
	{ pattern = "*.go", command = "silent call CocAction('runCommand', 'editor.action.organizeImport')" }
)
api.nvim_create_autocmd("FileType", { pattern = "go", command = "nmap gtj :CocCommand go.tags.add json<cr>" })
api.nvim_create_autocmd("FileType", { pattern = "go", command = "nmap gty :CocCommand go.tags.add yaml<cr>" })
api.nvim_create_autocmd("FileType", { pattern = "go", command = "nmap gtx :CocCommand go.tags.clear<cr>" })
