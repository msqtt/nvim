L = {}

-- git status base by coc-git
function GitInfo()
    local branch = vim.g.coc_git_status or ''
    local diff = vim.b.coc_git_status or ''
    return (string.len(branch) > 0 and string.format(" %s ", branch) or " none ")
        .. (string.len(diff) > 0 and string.format('%s ', vim.fn.trim(diff)) or '')
end
-- diagnostic info base by coc
function CocErrCount()
    local coc_diagnostic_info = vim.b.coc_diagnostic_info or { error = 0 }
    return string.format(' E%d ', coc_diagnostic_info.error)
end
-- show ft
function GetFt()
    local ft = vim.api.nvim_eval('&ft')
    return string.format(' %s ', string.len(ft) > 0 and ft or '~')
end

function L.before()
vim.g.line_powerline_enable = 1
vim.g.line_nerdfont_enable = 1
vim.g.line_unnamed_filename='~'
vim.g.line_statusline_getters = {'v:lua.GitInfo', 'v:lua.CocErrCount', 'v:lua.GetFt'}
end
return L
