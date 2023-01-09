S = {}

function S.after()
	local surround = require("pack.utils").getPlug("nvim-surround")
	if surround then
		surround.setup({})
	end
end

return S
