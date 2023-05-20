-- Prerequisites:
-- https://github.com/Homebrew/homebrew-cask-fonts
-- brew install font-hack-nerd-font

local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Dracula Dark'
config.font = wezterm.font('Hack Nerd Font')
config.font_size = 13.0
config.line_height = 1.0

config.initial_rows = 58
config.initial_cols = 150
config.window_decorations = 'RESIZE | TITLE'
config.window_background_opacity = 1.0
config.front_end = 'WebGpu'

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 24

wezterm.on('gui-startup', function (cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():set_position(560, 170)
end)

return config
