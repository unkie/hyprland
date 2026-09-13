
-- █░█ █▄█ █▀█ █▀█ █░░ ▄▀█ █▄░█ █▀▄
-- █▀█ ░█░ █▀▀ █▀▄ █▄▄ █▀█ █░▀█ █▄▀

-- ▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄

-- config by unkiepunkie


-- █░█ ▄▀█ █▀█ █ ▄▀█ █▄▄ █░░ █▀▀ █▀
-- ▀▄▀ █▀█ █▀▄ █ █▀█ █▄█ █▄▄ ██▄ ▄█

-- Limit the amount of workspaces
local workspace_count = 6


-- █▀▀ █▀█ █░░ █▀█ █▀█ ░░ █▀ █▀▀ █░█ █▀▀ █▀▄▀█ █▀▀
-- █▄▄ █▄█ █▄▄ █▄█ █▀▄ ▀▀ ▄█ █▄▄ █▀█ ██▄ █░▀░█ ██▄

local colors = require ("catppuccin-frappe")


-- █▀▄▀█ █▀█ █▄░█ █ ▀█▀ █▀█ █▀█
-- █░▀░█ █▄█ █░▀█ █ ░█░ █▄█ █▀▄

hl.monitor ({
	output = "HDMI-A-1",
	mode = "preferred",
	position = "auto",
	scale = 1,
	-- disabled = false,
	-- transform = 0,
	-- mirror = "...",
	-- bitdepth = "8",
	-- cm = "srgb",
	-- sdr_eotf = "defaut",
	-- sdrbrightness = 1.0,
	-- sdrsaturation = 1.0,
	-- vrr = 0,
	-- icc = "..."
	-- reserved_area = 0,
	-- supports_wide_color = 0,
	-- supports_hdr = 0,
	-- sdr_min_luminance = 0.2,
	-- sdr_max_luminance = 80,
	-- min_luminance = -1,
	-- max_luminance = -1,
	-- max_avg_luminance = -1,
})


--  █ █▄░█ █▀█ █░█ ▀█▀
--  █ █░▀█ █▀▀ █▄█ ░█░

hl.config ({
	input = {
		-- kb_model = ...,
		-- kb_layout = "us",
		-- kb_variant = ...,
		kb_options = "compose:caps",
		-- kb_rules = ...,
		-- kb_file = ...,
		-- numlock_by_default = false,
		-- resolve_binds_by_sym = false,
		-- repeat_rate = 25,
		-- repeat_delay = 600,
		sensitivity = 0.7,
		accel_profile = "flat",
		-- force_no_accel = false,
		-- rotation = 0,
		-- left_handed = false,
		-- scroll_points = ...,
		-- scroll_method = ...,
		-- scroll_button = 0,
		-- scroll_button_lock = false,
		-- scroll_factor = 1.0,
		-- natural_scroll = false,
		follow_mouse = 0,
		-- follow_mouse_shrink = 0,
		-- follow_mouse_threshold = 0.0,
		-- focus_on_close = 0,
		-- mouse_refocus = true,
		float_switch_override_focus = 0,
		-- special_fallthrough = false,
		-- off_window_axis_events = 1,
		-- emulate_discrete_scroll = 1,
	}
})

-- █░░ █▀█ █▀█ █▄▀   ▄▀█ █▄░█ █▀▄   █▀▀ █▀▀ █▀▀ █░░
-- █▄▄ █▄█ █▄█ █░█   █▀█ █░▀█ █▄▀   █▀░ ██▄ ██▄ █▄▄

hl.config ({

	-- █▀▀ █▀▀ █▄░█ █▀▀ █▀█ ▄▀█ █░░
	-- █▄█ ██▄ █░▀█ ██▄ █▀▄ █▀█ █▄▄

	general = {
		border_size = 2,
		gaps_in = 2.5,
		gaps_out = 5,
		float_gaps = 5,
		gaps_workspaces = 0,
		col = {
			inactive_border = colors.overlay0,
			active_border = colors.mauve,
			nogroup_border = colors.yellow,
			nogroup_border_active = colors.overlay0,
		},
		layout = "master",
		-- no_focus_fallback = false,
		-- resize_on_border = false,
		-- extend_border_grab_area = 15,
		-- hover_icon_on_border = true,
		allow_tearing = true,
		-- resize_corder = 0,
		-- modal_parent_blocking = true,
		-- locale = "...",

		snap = {
			enabled = true,
			window_gap = 16,
			monitor_gap = 16,
			border_overlap = false,
			respect_gaps = false,
		},
	},


	-- █▀▄ █▀▀ █▀▀ █▀█ █▀█ ▄▀█ ▀█▀ █ █▀█ █▄░█
	-- █▄▀ ██▄ █▄▄ █▄█ █▀▄ █▀█ ░█░ █ █▄█ █░▀█

	decoration = {
		rounding = 7,
		rounding_power = 2.0,
		-- active_opacity = 1.0,
		-- inactive_opacity = 1.0,
		-- fullscreen_opacity = 1.0,
		-- dim_modal = true,
		-- dim_inactive = false,
		-- dim_strength = 0.5,
		-- dim_special = 0.2,
		-- dim_around = 0.4,
		-- screen_shader = "...",
		-- border_part_of_window = true,

		blur = {
			enabled = false,
			-- size = 8,
			-- passes = 1,
			-- ignore_opacity = true,
			-- new_optimizations = true,
			-- xray = false,
			-- noise = 0.0117,
			-- contrast = 0.8916,
			-- brightness = 1.0,
			-- vibrancy = 0.1696,
			-- vibrancy_darkness = 0.0,
			-- special = false,
			-- popups = false,
			-- popups_ignorealpha = 0.2,
			-- input_methods = false,
			-- input_methods_ignorealpha = 0.2,
		},

		shadow = {
			enabled = false,
			-- range = 4,
			-- render_power = 3,
			-- sharp = false,
			-- ignore_window = true,
			-- color = 0xee1a1a1a,
			-- color_inactive = ...,
			-- offset = {0, 0},
			-- scale = 1.0,
		},

		glow = {
			-- enabled = false,
			-- range = 10,
			-- render_power = 3,
			-- color = 0xee33ccff,
			-- color_inactive = ...,
		},

		motion_blur = {
			-- enabled = false,
			-- samples = 7,
		},

		wobble = {
			-- enabled = false,
			-- mesh = 12,
			-- stiffness = 200,
			-- damping = 12,
			-- mass = 1,
			-- intensity = 0.2,
			-- value_epsilon = 0.25,
			-- velocity_epsilon = 2,
		},
	},

	--  ▄▀█ █▄░█ █ █▀▄▀█ ▄▀█ ▀█▀ █ █▀█ █▄░█ █▀
	--  █▀█ █░▀█ █ █░▀░█ █▀█ ░█░ █ █▄█ █░▀█ ▄█

	animations = {
		enabled = false,
		workspace_wraparound = true,
	},


})


-- █▀▀ █▀█ █▀█ █░█ █▀█ █▀
-- █▄█ █▀▄ █▄█ █▄█ █▀▀ ▄█

hl.config ({
	group = {
		auto_group = false,
		-- insert_after_current = true,
		-- focus_removed_window = true,
		-- drag_into_group = 1,
		-- merge_groups_on_drag = true,
		-- merge_groups_on_groupbar = true,
		-- merge_floated_into_tiled_on_groupbar = false,
		-- group_on_movetoworkspace = false,

		col = {
			-- border_active = 0x66ffff00,
			-- border_inactive = 0x66777700,
			-- border_locked_active = 0x66ff5500,
			-- border_locked_inactive = 0x66775500,
		},

		groupbar = {
			-- enabled = false,
			-- disable_when_only = false,
			-- font_family = "...",
			-- font_size = 8,
			-- font_weight_active = "normal",
			-- font_weight_inactive = "normal",
			-- gradients = false,
			-- height = 14,
			-- indicator_gap = 0,
			-- indicator_height = 3,
			-- stacked = false,
			-- priority = 3,
			-- render_titles = true,
			-- text_offset = 0,
			-- text_padding = 0,
			-- scrolling = true,
			-- rounding = 1,
			-- rounding_power = 2.0,
			-- gradient_rounding = 2,
			-- gradient_rounding_power 2.0,
			-- round_only_edges = true,
			-- gradient_round_only_edges = true,
			-- text_color = 0xffffffff,
			-- text_color_inactive = ...,
			-- text_color_locked_active = ...,
			-- text_color_locked_inactive = ...,

			col = {
				-- active = 0x66ffff00,
				-- inactive = 0x66777700,
				-- locked_active = 0x66ff5500,
				-- locked_inactive = 0x66775500,
			},

			-- gaps_in = 2,
			-- gaps_out = 2,
			-- keep_upper_gap = true,
			-- middle_click_close = true,
			-- blur = false,
		}
	}
})


--  █▀▄▀█ █ █▀ █▀▀
--  █░▀░█ █ ▄█ █▄▄

hl.config ({
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		-- disable_scale_notification = false,
		col = {
			--splash = 0x55ffffff,
		},
		font_family = "SF Pro Display",
		-- splash_font_family = ...,
		force_default_wallpaper = 0,
		-- vrr = 0,
		-- mouse_move_enables_dpms = false,
		-- key_press_enables_dpms = false,
		-- name_vk_after_proc = true,
		-- always_follow_on_dnd = true,
		-- layers_hog_keyboard_focus = true,
		-- animate_manual_resizes = false,
		-- animate_mouse_windowdragging = false,
		-- disable_autoreload = false,
		--enable_swallow = true,
		--swallow_regex = "kitty",
		--swallow_exception_regex = "(wev|zsh|xev)",
		-- focus_on_activate = false,
		-- mouse_move_focuses_monitor = true,
		-- allow_session_lock_restore = false,
		-- session_lock_xray = false,
		background_color = colors.base,
		-- close_special_on_empty = true,
		-- on_focus_under_fullscreen = 2,
		-- exit_window_retains_fullscreen = false,
		-- initial_workspace_tracking = 1,
		-- initial_workspace_token_timeout = 10,
		-- middle_click_paste = true,
		-- render_unfocused_fps = 15,
		-- disable_xdg_env_checks = false,
		-- disable_hyprland_guiutils_check = false,
		-- lockdead_screen_delay = 1000,
		-- enable_anr_dialog = true,
		anr_missed_pings = 1,
		-- size_limits_tiled = false,
		-- screencopy_force_8b = true,
		-- disable_watchdog_warning = false,
		-- bell_sound = "default",
		-- float_force_onscreen = 0,
		-- new_float_force_onscreen = 2,
	}
})


-- █░░ ▄▀█ █▄█ █▀█ █░█ ▀█▀
-- █▄▄ █▀█ ░█░ █▄█ █▄█ ░█░

hl.config ({
	layout = {
		-- single_window_aspect_ratio = {0, 0},
		-- single_window_aspect_ratio_tolerance = 0.1,
	}
})


--  █▄▄ █ █▄░█ █▀▄ █▀
--  █▄█ █ █░▀█ █▄▀ ▄█

hl.config ({
	binds = {
		-- pass_mouse_when_bound = false,
		-- scroll_event_delay = 300,
		workspace_back_and_forth = true,
		-- hide_special_on_workspace_change = false,
		allow_workspace_cycles = true,
		workspace_center_on = 0,
		-- focus_preferred_method = 0,
		-- ignore_group_lock = false,
		movefocus_cycles_fullscreen = true,
		-- movefocus_cycles_groupfirst = false,
		-- window_direction_monitor_fallback = true,
		-- disable_keybind_grabbing = false,
		-- allow_pin_fullscreen = false,
		-- drag_threshold = 0,
		-- drag_center_window = false,
	}
})

local keybinds = require ("keybinds")
keybinds.setup (workspace_count)


--  ▀▄█ █░▄░█ ▄▀█ █▄█ █░░ ▄▀█ █▄░█ █▀▄
--  █▀▄ ▀▄▀▄▀ █▀█ ░█░ █▄▄ █▀█ █░▀█ █▄▀

hl.config ({
	xwayland = {
		-- enabled = true,
		-- use_nearest_neighbor = true,
		-- force_zero_scaling = false,
		-- create_abstract_socket = false,
	}
})


--  █▀█ █▀█ █▀▀ █▄░█ █▀▀ █░░
--  █▄█ █▀▀ ██▄ █░▀█ █▄█ █▄▄

hl.config ({
	opengl = {
		-- nvidia_anti_flicker = true
	}
})


--  █▀█ █▀▀ █▄░█ █▀▄ █▀▀ █▀█
--  █▀▄ ██▄ █░▀█ █▄▀ ██▄ █▀▄

hl.config ({
	render = {
		direct_scanout = 1,
		-- expand_undersized_textures = true,
		-- xp_mode = false,
		-- ctm_animation = 2,
		-- cm_enabled = true,
		-- send_content_type = true,
		-- cm_auto_hdr = 1,
		-- new_render_scheduling = false,
		-- non_sharder_cm = 3,
		-- non_shader_cm_interop = 2,
		-- cm_sdr_eotf = "default",
		-- commit_timing_enabled = true,
		-- use_fp16 = 2,
		-- keep_unmodified_copy = 2,
		-- use_shader_blur_blend = false,
		-- icc_vcgt_enabled = true,
		-- fp16_sdr_tf = 0,
		-- not_shown_fifo_lock,
	}
})


--  █▀▀ █░█ █▀█ █▀ █▀█ █▀█
--  █▄▄ █▄█ █▀▄ ▄█ █▄█ █▀▄

hl.config ({
	cursor = {
		-- invisible = false,
		-- sync_gsettings_theme = true,
		-- no_hardware_cursors = 2,
		no_break_fs_vrr = 1,
		-- min_refresh_rate = 24,
		-- hotspot_padding = 0,
		inactive_timeout = 3,
		no_warps = true,
		persistent_warps = true,
		-- warp_on_change_workspace = 0,
		-- warp_on_toggle_special = 0,
		-- default_monitor = ...,
		-- zoom_factor = 1.0,
		-- zoom_rigid = false,
		-- zoom_detached_camera = true,
		-- enable_hyprcursor = true,
		-- hide_on_key_press = false,
		-- hide_on_touch = true,
		-- hide_on_tablet = false,
		-- use_cpu_buffer = 2,
		-- warp_back_after_non_mouse_input = false,
		-- zoom_disable_aa = false,
	}
})


--  █▀▀ █▀▀ █▀█ █▀ █▄█ █▀ ▀█▀ █▀▀ █▀▄▀█
--  ██▄ █▄▄ █▄█ ▄█ ░█░ ▄█ ░█░ ██▄ █░▀░█

hl.config ({
	ecosystem = {
		-- no_update_news = false,
		no_donation_nag = true,
		-- enforce_permissions = false,
	}
})


-- █▀█ █░█ █ █▀█ █▄▀ █▀
-- ▀▀█ █▄█ █ █▀▄ █░█ ▄█

hl.config ({
	quirks = {
		prefer_hdr = 2,
		-- skip_non_kms_dmabuf_formats = false,
	}
})

-- █░▄░█ █▀█ █▀█ █▄▀ █▀ █▀█ ▄▀█ █▀▀ █▀▀   █▀█ █░█ █░░ █▀▀ █▀
-- ▀▄▀▄▀ █▄█ █▀▄ █░█ ▄█ █▀▀ █▀█ █▄▄ ██▄   █▀▄ █▄█ █▄▄ ██▄ ▄█

-- default to workspace 2 on the main monitor
--
for num = 1, workspace_count do
	-- make our workspaces permanent
	hl.workspace_rule ({
		workspace = "r["..num.."]",
		persistent = true,
		-- workspace 2 is the default one
		default = num == 2 and true or false,
	})
end



-- █░▄░█ █ █▄░█ █▀▄ █▀█ █░▄░█   █▀█ █░█ █░░ █▀▀ █▀
-- ▀▄▀▄▀ █ █░▀█ █▄▀ █▄█ ▀▄▀▄▀   █▀▄ █▄█ █▄▄ ██▄ ▄█

require ("windowrules")


--  ▄▀█ █░█ ▀█▀ █▀█ █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
--  █▀█ █▄█ ░█░ █▄█ ▄█ ░█░ █▀█ █▀▄ ░█░

require ("autostart")

