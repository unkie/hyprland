--
--  █░▄░█ █ █▄░█ █▀▄ █▀█ █░▄░█ █▀█ █░█ █░░ █▀▀ █▀
--  ▀▄▀▄▀ █ █░▀█ █▄▀ █▄█ ▀▄▀▄▀ █▀▄ █▄█ █▄▄ ██▄ ▄█

--  ▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀

-- PulseAudio volume control app always floats
hl.window_rule ({
	name = "pavucontrol",
	match = {
		class = "pavucontrol",
	},
	float = true,
})

-- Orage calender app should have a specific size, and float
hl.window_rule ({
	name = "orage",
	match = {
		class = "orage",
	},
	float = true,
	size = "500 450",
	center = true,
})

-- Give the calculator app a specific size and make it float
hl.window_rule ({
	name = "calculator",
	match = {
		class = "org.gnome.Calculator",
	},
	float = true,
	size = { 500, 750},
	center = true,
})

-- Fix the size of the blender file browser
hl.window_rule ({
	name = "blender file browser",
	match = {
		class = "blender",
		title = "Blender File View",
	},
	size = "(monitor_w*0.5) (monitor_h*0.5)",
})

-- The LateX formula editor should float
hl.window_rule ({
	name = "klatexformula",
	match = {
		class = "klatexformula",
	},
	float = true,
})

-- The Thunar file manager should float
hl.window_rule ({
	name = "thunar",
	match = {
		class = "thunar",
	},
	float = true,
})
