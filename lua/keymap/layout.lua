local u = require("keymap.utils")
local mod, map, opt = u.mod, u.map, u.opt

local function mapLayout(mode, pre, now)
	local ot = opt():Nore()
	map(mode, pre, now, ot)
	map(mode, now, pre, ot)
	pre = string.upper(pre)
	now = string.upper(now)
	map(mode, pre, now, ot)
	map(mode, now, pre, ot)
end

local modnx = mod():n():x()

mapLayout(modnx, "n", "j")
mapLayout(modnx, "e", "k")
mapLayout(modnx, "m", "h")
mapLayout(modnx:o(), "i", "l")
