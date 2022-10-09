local awful = require("awful")
local gears = require("gears")

local modkey = require("constants").modkey
local mymainmenu = require("menu")

return {
	clientbuttons = gears.table.join(
		awful.button({}, 1, function(c)
			c:emit_signal("request::activate", "mouse_click", { raise = true })
		end),
		awful.button({ modkey }, 1, function(c)
			c:emit_signal("request::activate", "mouse_click", { raise = true })
			awful.mouse.client.move(c)
		end),
		awful.button({ modkey }, 3, function(c)
			c:emit_signal("request::activate", "mouse_click", { raise = true })
			awful.mouse.client.resize(c)
		end)
	),
	mouseButtons = gears.table.join(
		awful.button({}, 3, function()
			mymainmenu:toggle()
		end),
		awful.button({}, 4, awful.tag.viewnext),
		awful.button({}, 5, awful.tag.viewprev)
	),
}
