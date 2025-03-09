local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end
--config.color_scheme = 'nightfox'
config.font = wezterm.font_with_fallback({
  { family = "0xProto Nerd Font", scale = 1.50 },
  { family = "Font Awesome 6 Free", scale = 1.33 },
})

-- coolnight colorscheme by josean martinez
-- github.com/josean-dev/dev-environment-files
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

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
config.enable_wayland = true
config.window_decorations = "RESIZE | TITLE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "Home"
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 165
config.term = "xterm-256color"

return config
