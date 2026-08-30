--------------------------------------
---- HYPERLAND CONFIGURATION FILE ----
--------------------------------------

-- Refer to the wiki for more information.
-- https://wiki.hyprland.org/Configuring/

------------------
---- MONITORS ----
------------------

-- See https://wiki.hyprland.org/Configuring/Monitors/
--monitor=,preferred,auto,auto

hl.monitor({
    output   = "DP-1",
    mode     = "1920x1080@165",
    position = "0x0",
    scale    = "1",
})

---------------------
---- MY PROGRAMS ----
---------------------

-- See https://wiki.hyprland.org/Configuring/Keywords/

-- local termin = "ghostty"
-- local fileManager = "dolphin"
-- local appMenu = "wofi --show drun"
-- local browser = "firefox"
-- local wallpaper = "hyprpaper"
-- local bar = "waybar"
-- local lock = "hyprlock"
-- local idea = "$HOME/idea/idea-IU-251.25410.129/bin/idea"
-- local clipboard = "copyq --start-server"
-- local print = "hyprshot"

----------------------
---- CONFIG FILES ----
----------------------

require("configs/autostart")
require("configs/look_and_feel")
require("configs/input")
require("configs/keybindings")

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hyprland.org/Configuring/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
-- See https://wiki.hyprland.org/Configuring/Workspace-Rules/ for workspace rules

hl.config({
    dwindle = {
        smart_split = true,
    },
})
