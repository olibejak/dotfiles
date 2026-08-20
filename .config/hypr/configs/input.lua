---------------
---- INPUT ----
---------------

-- https://wiki.hyprland.org/Configuring/Variables/#input

hl.config({
    input = {
        kb_layout = "us,cz",
        kb_variant = ",qwerty",
        kb_model = "",
        kb_options = "grp:win_space_toggle",
        kb_rules = "",

        follow_mouse = 1,
        mouse_refocus = true,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        }
    }
})

-- https://wiki.hyprland.org/Configuring/Variables/#gestures
-- hl.gestures({
--     workspace_swipe = false,
-- })

-- Example per-device config
-- See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})
