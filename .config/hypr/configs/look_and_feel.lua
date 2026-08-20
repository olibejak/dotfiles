-----------------------
--- LOOK AND FEEL ---
-----------------------

-- NERV Evangelion Theme

hl.config({
    general = {
        border_size = 2,
        gaps_in = 4,
        gaps_out = 2,
        col = {
            active_border = { colors = {"rgba(e60026ee)", "rgba(cc0000ee)"}, angle = 45 },
            inactive_border = "rgba(222222aa)",
        },
        layout = "dwindle",
    },

    decoration = {
        rounding = 2,
        dim_inactive = false,
        active_opacity = 0.99,
        inactive_opacity = 0.95,
        
        blur = {
            enabled = false,
        },
        
        shadow = {
            enabled = false,
            range = 1,
            render_power = 1,
            sharp = false,
            -- ignore_window = true,
            color = "rgba(e60026cc)",          -- main shadow color
            color_inactive = "rgba(660000aa)", -- for inactive windows
            offset = "3 3",
            scale = 1.0,
        },
    },

    animations = {
        enabled = true,
    },
})

hl.curve("nerv", { type = "bezier", points = { {0.2, 0.9}, {0.3, 1.1} } })

hl.animation({ leaf = "windows", enabled = true, speed = 5, bezier = "nerv", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 5, bezier = "nerv" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "nerv" })hl.config({
    dwindle = {
        -- pseudotile = true,
        preserve_split = true,
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = false,
    }
})
