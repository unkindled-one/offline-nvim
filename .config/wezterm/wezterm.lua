local wezterm = require("wezterm")
local config = wezterm.config_builder()
config.default_prog = { "pwsh.exe", "-NoLogo" }
config.front_end = "WebGpu"
config.webgpu_preferred_adapter = wezterm.gui.enumerate_gpus()[2]
config.window_close_confirmation = "NeverPrompt"

-- Color scheme settings
config.use_fancy_tab_bar = true
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_frame = {
	-- active_titlebar_bg = '#1e1e2e',
	-- inactive_titlebar_bg = '#1e1e2e'
	active_titlebar_bg = "#24273a",
	inactive_titlebar_bg = "#24273a",
}
config.colors = {
	tab_bar = {
		-- background = '#1e1e2e',
		background = "#24273a",
		active_tab = {
			-- bg_color = '#181825',
			-- fg_color = '#cdd6f4',
			bg_color = "#1e2030",
			fg_color = "#cad3f5",
		},
		inactive_tab = {
			-- bg_color = '#1e1e2e',
			-- fg_color = '#cdd6f4',
			bg_color = "#24273a",
			fg_color = "#cad3f5",
		},
		new_tab = {
			-- bg_color = '#1e1e2e',
			-- fg_color = '#cdd6f4',
			bg_color = "#24273a",
			fg_color = "#cad3f5",
		},
		inactive_tab_hover = {
			-- bg_color = '#313244',
			-- fg_color = '#cdd6f4',
			bg_color = "#363a4f",
			fg_color = "#cad3f5",
		},
		new_tab_hover = {
			-- bg_color = '#313244',
			-- fg_color = '#cdd6f4',
			bg_color = "#363a4f",
			fg_color = "#cad3f5",
		},
	},
}
config.color_scheme = "Catppuccin Macchiato"

-- Animation settings
config.max_fps = 165
config.animation_fps = 165

-- Font settings
-- config.font = wezterm.font 'JetBrains Mono'
-- config.font = wezterm.font 'CaskaydiaCove Nerd Font Mono'
-- config.font = wezterm.font 'Hack Nerd Font Mono'
config.font = wezterm.font("Maple Mono NF")
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.font_size = 14.0

-- local smart_splits = wezterm.plugin.require('https://github.com/mrjones2014/smart-splits.nvim')
-- smart_splits.apply_to_config(config, {
--   -- direction_keys = { 'h', 'j', 'k', 'l' },
--   modifiers = {
--     move = 'CTRL',
--     rezie = 'ALT'
--   }
-- })

return config
