-- Standard awesome library
local awful = require("awful")
-- Widget and layout library
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local hotkeys_popup = require("awful.hotkeys_popup")

local constants = require("constants")
local terminal = constants.terminal
local editor_cmd = constants.editor_cmd

-- {{{ Menu
-- Create a launcher widget and a main menu
local myawesomemenu = {
	{
		"hotkeys",
		function()
			hotkeys_popup.show_help(nil, awful.screen.focused())
		end,
	},
	{ "manual", terminal .. " -e man awesome" },
	{ "edit config", editor_cmd .. " " .. awesome.conffile },
	{ "restart", awesome.restart },
	{
		"quit",
		function()
			awesome.quit()
		end,
	},
}

return awful.menu({
	items = {
		{ "awesome", myawesomemenu, beautiful.awesome_icon },
		{ "open terminal", terminal },
	},
})
