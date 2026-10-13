-- Allow tearing
hl.config({
    general = {
        allow_tearing = true
    }
})

-- CS2
hl.window_rule({
    match = { 
        class = "^(cs2)$"
    },
    immediate = true
})
