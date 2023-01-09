G = {}

function G.before()
	local glow = require("pack.utils").getPlug("glow")
	if glow then
		glow.setup({ width_ratio = 0.7, height_ratio = 0.7 })
		-- keymap
		require("keymap.packkeys").glow()
	end
end

return G
