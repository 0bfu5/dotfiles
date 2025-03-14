local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end
config.color_scheme = "Solarized Light (Gogh)"
config.font = wezterm.font_with_fallback({
  { family = "0xProto Nerd Font", scale = 1.50 },
  { family = "Font Awesome 6 Free", scale = 1.33 },
})

-- coolnight colorscheme by josean martinez
-- github.com/josean-dev/dev-environment-files
--config.colors = {
--	foreground = "#CBE0F0",
--	background = "#011423",
--	cursor_bg = "#47FF9C",
--	cursor_border = "#47FF9C",
--	cursor_fg = "#011423",
--	selection_bg = "#033259",
--	selection_fg = "#CBE0F0",
--	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
--	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
--}

-- based on acme colors from plan0
-- 
config.colors = {
	foreground = "#424242",
	background = "#ffffec",
	cursor_bg = "#424242",
	cursor_border = "#424242",
	cursor_fg = "#ffffec",
	selection_bg = "#ffffec",
	selection_fg = "#424242",
	ansi = { "#424242", "#b8261e", "#3e8620", "#7f8f29", "#2a8dc5", "#8888c7", "#6aa7a8", "#999957" },
	brights = { "#b6b79c", "#f2acaa", "#98ce8f", "#ceeea7", "#a6dcf8", "#d0d1f7", "#b0eced", "#ffffec" },
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
