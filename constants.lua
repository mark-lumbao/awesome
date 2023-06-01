-- This is used later as the default terminal and editor to run.
local terminal = "alacritty"
local browser = "brave"
local editor = os.getenv("EDITOR") or "nvim"

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
local modkey = "Mod4"
local alt = "Mod1"

return {
	terminal = terminal,
	browser = browser,
	editor = editor,
	editor_cmd = terminal .. " -e " .. editor,
	modkey = modkey,
	alt = alt,
	autorun = true,
	autorunApps = {
		"xfce4-power-manager &",
		"pamac-tray &",
		"killall pasystray",
		"pasystray &",
		"blueberry-tray &",
		"nm-applet &",
		"killall volumeicon",
		"volumeicon",
		"picom -b",
	},
}
