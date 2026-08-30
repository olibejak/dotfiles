return {
    terminal = "ghostty",
    fileManager = "dolphin",
--  appMenu = "wofi --show drun",
    appMenu = "rofi -show drun",
    windowMenu = "rofi -show window",
    runMenu = "rofi -show run",
    browser = "firefox",
    wallpaper = "hyprpaper",
    bar = "waybar",
    lock = "hyprlock",
    idea = "$HOME/idea/idea-IU-251.25410.129/bin/idea",
--  clipboard = "copyq --start-server",
    text_clipboard = "wl-paste --type text --watch cliphist store",
    image_clipboard = "wl-paste --type image --watch cliphist store",
    print = "hyprshot"
}
