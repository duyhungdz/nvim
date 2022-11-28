-- local dracula_present, dracula = pcall(require, "dracula")
--
-- if not dracula_present then
-- 	return
-- end
--
-- dracula.setup({
-- 	transparent_bg = true,
-- 	lualine_bg_color = "#44475a",
-- 	italic_comment = true,
-- })
--
-- vim.cmd("colorscheme dracula")
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
