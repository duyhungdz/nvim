local present, rose = pcall(require, "rose-pine")

if not present then
	return
end

rose.setup({
	--- @usage 'main' | 'moon'
	dark_variant = "moon",
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
	disable_italics = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = "base",
		panel = "surface",
		border = "highlight_med",
		comment = "muted",
		link = "iris",
		punctuation = "subtle",

		error = "love",
		hint = "iris",
		info = "foam",
		warn = "gold",

		headings = {
			h1 = "iris",
			h2 = "foam",
			h3 = "rose",
			h4 = "gold",
			h5 = "pine",
			h6 = "foam",
		},
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = "rose" },
	},
})
vim.cmd("colorscheme rose-pine")
--
-- local status, gruvbox = pcall(require, "gruvbox")
--
-- if not status then
-- 	return
-- end
--
-- gruvbox.setup({
-- 	contrast = "soft",
-- 	transparent_mode = true,
-- 	italic = false,
-- })
--
-- vim.cmd("colorscheme gruvbox")
--
-- local status, tokyonight = pcall(require, "tokyonight")
--
-- if not status then
-- 	return
-- end
--
-- tokyonight.setup({
-- 	transparent = false,
-- 	keywords = { italic = false },
-- 	terminal_colors = true,
-- })
--
-- vim.cmd("colorscheme tokyonight-night")
