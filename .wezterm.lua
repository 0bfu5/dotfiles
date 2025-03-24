local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end
config.color_scheme = "darkmoss (base16)"
config.font = wezterm.font_with_fallback({
  { family = "3270 Nerd Font Mono", scale = 1.75 },
  { family = "Font Awesome 6 Free", scale = 1.75 },
})

config.window_padding = {
  left = 20,
  right = 0,
  top = 20,
  bottom = 0,
}

-- toggle fullscreen
config.keys = {
  {
    key = 'f',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
}

config.window_background_opacity = 1.0
config.enable_wayland = false
config.window_decorations = "RESIZE | TITLE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "Home"
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 165
config.term = "xterm-256color"

return config
