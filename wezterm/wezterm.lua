local wezterm = require 'wezterm'

return {
    font = wezterm.font("JetBrains Mono"),
    font_size = 16,
    color_scheme = "Tomorrow Night Eighties",
    hide_tab_bar_if_only_one_tab = true,
    -- Maximize the window on start-up
    initial_cols = 999,
    initial_rows = 999,
    audible_bell = "Disabled",
}
