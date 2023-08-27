local myLogger = hs.logger.new("myLogger", "debug")

require("hs.ipc")
hs.ipc.cliInstall()

hs.loadSpoon("SpoonInstall")
spoon.SpoonInstall:andUse("EmmyLua")
spoon.SpoonInstall:andUse("Shade")
spoon.SpoonInstall:andUse("RecursiveBinder", {
  config = { escapeKey = { { "ctrl" }, "[" } },
  fn = function(RecursiveBinder)
    local singleKey = RecursiveBinder.singleKey
    local keyMap = {
      [singleKey("w", "safari")] = function() hs.application.launchOrFocus("Safari") end,
      [singleKey("t", "wezterm")] = function() hs.application.launchOrFocus("Wezterm") end,
      [singleKey("h", "hammerspoon")] = {
        [singleKey("r", "reload config")] = function()
          hs.reload()
        end,
        [singleKey("c", "open console")] = function()
          hs.openConsole()
        end,
      },
      [singleKey("s", "special ✨")] = {
        [singleKey("s", "toggle shade")] = function()
          spoon.Shade:toggleShade()
        end,
        [singleKey("w", "grab word")] = function()
          spoon.ScreenWords:chooseWord()
        end,
      },
      [singleKey("m", "Mac system")] = {
        [singleKey("S", "shutdown")] = function()
          hs.caffeinate.shutdownSystem()
        end,
        [singleKey("l", "lock screen")] = function()
          hs.caffeinate.lockScreen()
        end,
        [singleKey("r", "reboot")] = function()
          hs.caffeinate.restartSystem()
        end,
        [singleKey("s", "screensaver")] = function()
          hs.caffeinate.startScreensaver()
        end,
        [singleKey("e", "sleep")] = function()
          hs.caffeinate.systemSleep()
        end,
      },
    }
    hs.hotkey.bind({ "alt" }, "space",
      RecursiveBinder.recursiveBind(keyMap))
  end
})

hs.loadSpoon("PaperWM")
spoon.PaperWM.window_gap = 30
spoon.PaperWM:bindHotkeys({
  -- switch to a new focused window in tiled grid
  focus_left     = { { "alt" }, "h" },
  focus_right    = { { "alt" }, "l" },
  focus_up       = { { "alt" }, "k" },
  focus_down     = { { "alt" }, "j" },

  -- move windows around in tiled grid
  swap_left      = { { "alt", "cmd" }, "h" },
  swap_right     = { { "alt", "cmd" }, "l" },
  swap_up        = { { "alt", "cmd" }, "k" },
  swap_down      = { { "alt", "cmd" }, "j" },

  -- position and resize focused window
  center_window  = { { "alt" }, "/" },
  full_width     = { { "alt" }, "m" },
  cycle_width    = { { "alt" }, "," },
  cycle_height   = { { "alt" }, "." },

  -- move focused window into / out of a column
  slurp_in       = { { "alt" }, "i" },
  barf_out       = { { "alt" }, "o" },

  -- switch to a new Mission Control space
  switch_space_1 = { { "alt" }, "1" },
  switch_space_2 = { { "alt" }, "2" },
  switch_space_3 = { { "alt" }, "3" },
  switch_space_4 = { { "alt" }, "4" },
  switch_space_5 = { { "alt" }, "5" },
  switch_space_6 = { { "alt" }, "6" },
  switch_space_7 = { { "alt" }, "7" },
  switch_space_8 = { { "alt" }, "8" },
  switch_space_9 = { { "alt" }, "9" },

  -- move focused window to a new space and tile
  move_window_1  = { { "alt", "cmd" }, "1" },
  move_window_2  = { { "alt", "cmd" }, "2" },
  move_window_3  = { { "alt", "cmd" }, "3" },
  move_window_4  = { { "alt", "cmd" }, "4" },
  move_window_5  = { { "alt", "cmd" }, "5" },
  move_window_6  = { { "alt", "cmd" }, "6" },
  move_window_7  = { { "alt", "cmd" }, "7" },
  move_window_8  = { { "alt", "cmd" }, "8" },
  move_window_9  = { { "alt", "cmd" }, "9" }
})
spoon.PaperWM:start()

hs.loadSpoon("ScreenWords")
