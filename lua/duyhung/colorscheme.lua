-- local kanagawa_present, kanagawa = pcall(require, "kanagawa")
--
-- if not kanagawa_present then
-- 	return
-- end
--
-- kanagawa.setup({
-- 	commentStyle = { italic = false },
-- 	keywordStyle = { italic = false },
-- 	variablebuiltinStyle = { italic = false },
-- 	transparent = true,
-- })
--
-- vim.cmd("colorscheme kanagawa")
--
local status, gruvbox = pcall(require, "gruvbox")

if not status then
	return
end

gruvbox.setup({
	contrast = "soft",
	transparent_mode = true,
	italic = false,
})

vim.cmd("colorscheme gruvbox")

-- local status, tokyonight = pcall(require, "tokyonight")
--
-- if not status then
--   return
-- end
--
-- tokyonight.setup({
--   transparent = true,
--   style = "moon",
--   terminal_colors = true,
--   styles = {
--     keywords = { italic = false }
--   }
-- })
--
-- vim.cmd("colorscheme tokyonight-moon")
