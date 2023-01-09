B = {}

function B.after()
	local boo = require("pack.utils").getPlug("boo-colorscheme")
	if boo then
		boo.use({
			italic = true, -- toggle italics
			theme = "boo",
		})
	end
end

return B
