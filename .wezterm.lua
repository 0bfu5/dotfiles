local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end
config.color_scheme = 'Dark+'
config.font = wezterm.font_with_fallback({
  { family = "Ubuntu Mono", scale = 1.66 },
  { family = "Font Awesome 6 Free", scale = 1.66 },
})

config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

-- toggle fullscreen
config.keys = {
  {
    key = 'f',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
}

config.window_background_opacity = 0.90
config.enable_wayland = false
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "Home"
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 165

return config
