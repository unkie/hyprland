
--  █▄▀ █▀▀ █▄█ █▄▄ █ █▄░█ █▀▄ █▀
--  █░█ ██▄ ░█░ █▄█ █ █░▀█ █▄▀ ▄█

--  ▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀

local mod = "SUPER"
local lmb = "mouse:272"
local rmb = "mouse:273"

local M = {}

local workspace_count


-- Helper to nagivate workspaces
--
-- param action: Either 'focus', which changes focus to
--   the workspace to the direction`. Or 'move' which
--   does that and takes the active window with it.
-- param direction: The direction to move/focus to.
--   Either 'left' or 'right'
local function workspace_nav (action, direction)
	local active_workspace = hl.get_active_workspace ().id
	local target_workspace = 1
	--os.execute ('notify-send -u critical "Active: '..target_workspace..'"')

	if direction == "next" then
		target_workspace = active_workspace + 1
	elseif direction == "previous" then
		target_workspace = active_workspace - 1
	else
		hl.notification.create ({
			text = "Invalid direction: " .. direction,
			timeout = 10000
		})
	end

	if target_workspace > workspace_count then
		target_workspace = 1
	elseif target_workspace < 1 then
		target_workspace = workspace_count
	end

	if action == "focus" then
		hl.dispatch (hl.dsp.focus ({ workspace = target_workspace }))
	elseif action == "move" then
		hl.dispatch (hl.dsp.window.move ({
			workspace = target_workspace,
			follow = true,
		}))
		hl.dispatch (hl.dsp.window.move ({
			direction = "left",
		}))
	else
		hl.notification.create ({
			text = "Invalid action: " .. action,
			timeout = 10000
		})
	end
end


function M.setup (ws_count)

	workspace_count = ws_count

	hl.bind (mod.." + P", hl.dsp.exec_cmd ("kitty"))
	hl.bind (mod.." + R", hl.dsp.exec_cmd ("rofi -show drun"))
	hl.bind ("Menu", hl.dsp.exec_cmd ("rofi -show drun"))
	hl.bind ("SHIFT + CONTROL + k", hl.dsp.exec_cmd ("hyprctl kill"))

	hl.bind (mod.." + W", hl.dsp.window.kill ())
	hl.bind (mod.." + S", hl.dsp.window.float ({ action = "toggle" }))
	hl.bind (mod.." + F", hl.dsp.window.fullscreen ({ mode = "fullscreen" }))
	hl.bind (mod.." + SHIFT + F", hl.dsp.window.pin ({}))

	hl.bind ("F11", hl.dsp.exec_cmd ("pactl set-sink-volume 0 -3%"))
	hl.bind ("F12", hl.dsp.exec_cmd ("pactl set-sink-volume 0 +3%"))
	hl.bind ("F10", hl.dsp.exec_cmd ("pactl set-sink-mute 0 toggle"))

	-- hl.bind ("Print", hl.dsp.exec_cmd ("grim -c $HOME/Screenshots/$(date +'%s.png'")
	-- hl.bind (mod .. " + Print", hl.dsp.exec_cmd ("grim -g "$(slurp"))" $HOME/Screenshots/$(date +'%s.png'))

	-- toggle visibility of waybar
	hl.bind (mod .. " + B", hl.dsp.exec_cmd ("killall -SIGUSR1 waybar"))
	-- reload waybar config
	hl.bind (mod .. " + SHIFT + B", hl.dsp.exec_cmd ("killall -SIGUSR2 waybar"))

	--  move window focus with super+alt+arrow
	hl.bind (mod.." + ALT + Left", hl.dsp.focus ({ direction = "left" }))
	hl.bind (mod.." + ALT + Right", hl.dsp.focus ({ direction = "right" }))
	hl.bind (mod.." + ALT + Down", hl.dsp.focus ({ direction = "down" }))
	hl.bind (mod.." + ALT + Up", hl.dsp.focus ({ direction = "up" }))

	-- move window focus also with hjkl
	hl.bind (mod.." + ALT + h", hl.dsp.focus ({ direction = "left" }))
	hl.bind (mod.." + ALT + j", hl.dsp.focus ({ direction = "down" }))
	hl.bind (mod.." + ALT + k", hl.dsp.focus ({ direction = "up" }))
	hl.bind (mod.." + ALT + l", hl.dsp.focus ({ direction = "right" }))

	--  use alt+lmb to move a window, and ctrl+rmb to resize a window
	hl.bind ("ALT + "..lmb, hl.dsp.window.drag (), { mouse = true })
	hl.bind ("CONTROL + "..rmb, hl.dsp.window.resize (), { mouse = true })

	--  move the focused window with super+alt+shift+arrow
	hl.bind (mod.." + SHIFT + Left", hl.dsp.window.move ({ direction = "left" }))
	hl.bind (mod.." + SHIFT + Right", hl.dsp.window.move ({ direction = "right" }))
	hl.bind (mod.." + SHIFT + Down", hl.dsp.window.move ({ direction = "down" }))
	hl.bind (mod.." + SHIFT + Up", hl.dsp.window.move ({ direction = "up" }))

	--  move the focused window also with hjkl
	hl.bind (mod.." + SHIFT + h", hl.dsp.window.move ({ direction = "left" }))
	hl.bind (mod.." + SHIFT + j", hl.dsp.window.move ({ direction = "down" }))
	hl.bind (mod.." + SHIFT + k", hl.dsp.window.move ({ direction = "up" }))
	hl.bind (mod.." + SHIFT + l", hl.dsp.window.move ({ direction = "right" }))

	--  use alt+scroll to move a window to the workspace on the left or right
	hl.bind ("ALT + mouse_down", function ()
		workspace_nav ("focus", "next")
	end)
	hl.bind ("ALT + mouse_up", function ()
		workspace_nav ("focus", "previous")
	end)

	--  change to the workspace on the left or right with super+arrow
	hl.bind (mod.." + Right", function ()
		workspace_nav ("focus", "next")
	end)
	hl.bind (mod.." + Left", function ()
		workspace_nav ("focus", "previous")
	end)

	for num = 1, workspace_count do
		--  change to a specific workspace with super+num 
		hl.bind (mod.." + "..num, hl.dsp.focus ({ workspace = num }))
		--  move the focused window to a specific workspace with super+shift+num 
		hl.bind (mod.." + SHIFT + "..num, hl.dsp.window.move ({ workspace = num }))
	end

	--  move the focused window to the workspace on the left or right
	--  with super+ctrl+arrow left/right
	hl.bind (mod.." + CONTROL + Left", function ()
		workspace_nav ("move", "previous")
	end)
	hl.bind (mod.." + CONTROL + Right", function ()
		workspace_nav ("move", "next")
	end)

	end

return M
