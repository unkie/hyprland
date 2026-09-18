--
-- ▄▀█ █░█ ▀█▀ █▀█ █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
-- █▀█ █▄█ ░█░ █▄█ ▄█ ░█░ █▀█ █▀▄ ░█░
--
-- ▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄


hl.on ("hyprland.start", function ()
    -- XDG specification environment variables
    -- should be automatic, here as fallback
    hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
    hl.env("XDG_SESSION_TYPE", "wayland")
    hl.env("XDG_SESSION_DESKTOP", "Hyprland")

    -- GTK and QT: Use wayland if possible, fall back to X11
    hl.env ("GDK_BACKEND", "wayland,x11,*")
    hl.env ("QT_QPA_PLATFORM", "wayland;xcb")

    -- Use GTK theme for QT5 and QT6
    hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

    -- Use wayland and pulseaudio for SDL apps
    hl.env("SDL_VIDEODRIVER", "wayland")
    hl.env("SDL_AUDIODRIVER", "pulse")

    -- This fixes many sdl based games with mouse jumping issues.
    hl.env("SDL_MOUSE_RELATIVE", "0")

    -- Prevent wine front creating file associations and menu items.
    hl.env("WINEDLLOVERRIDES", "winemenubuilder.exe,d")

    -- Use this app to ask for passwords
    local askpass = "/usr/lib/ssh/gnome-ssh-askpass3"
    if os.execute("[ -x " .. askpass .. " ]") == true then
	hl.env("SSH_ASKPASS", askpass)
    end

    -- Set wallpaper
    hl.exec_cmd ("hyprpaper")

    -- Setup the mouse cursor theme and size
    hl.env ("XCURSOR_THEME", "Nordzy-cursors")
    hl.env ("XCURSOR_SIZE", "32")
    hl.exec_cmd ("gsettings set org.gnome.desktop.interface cursor-size 32")
    hl.exec_cmd ("gsettings set org.gnome.desktop.interface cursor-theme Nordzy-cursors")
    hl.exec_cmd ("hyprctl setcursor Nordzy-hyprcursors 32")

    --hl.exec_cmd ("gsettings set org.gnome.desktop.interface gtk-theme ndsb")
    hl.exec_cmd ("pactl set-sink-volume 0 70% 60% 70% 60% 65% 70%")
    hl.exec_cmd ("gammastep -l 47.376744:9.756293")
    hl.exec_cmd ("waybar")
    hl.exec_cmd ("dunst")
end)
