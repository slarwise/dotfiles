local wezterm = require 'wezterm'

return {
  font = wezterm.font("JetBrains Mono"),
  font_size = 16,
  color_scheme = "Sonokai (Gogh)",
  hide_tab_bar_if_only_one_tab = true,
  audible_bell = "Disabled",
  window_background_opacity = 0.95,
  window_decorations = "RESIZE",
  send_composed_key_when_right_alt_is_pressed = false,
  adjust_window_size_when_changing_font_size = false,
}
