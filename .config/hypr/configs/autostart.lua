-------------------
---- AUTOSTART ----
-------------------

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
local vars = require("configs/variables")

hl.on("hyprland.start", function ()
    -- System 
    hl.exec_cmd("xwaylandvideobridge")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("nm-applet")
            
    -- Tools and env
    hl.exec_cmd(vars.bar)
    hl.exec_cmd(vars.wallpaper)
    hl.exec_cmd(vars.clipboard)
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("easyeffects -w")
    
    -- Apps
    hl.exec_cmd(vars.terminal, { move = {0, 1} })
    hl.exec_cmd(vars.browser, { move = {0, 0} })
    hl.exec_cmd("steam", { move = {0, 2} })
    hl.exec_cmd("discord")
end)
