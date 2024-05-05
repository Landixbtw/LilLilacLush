-- colors/colorscheme.lua

-- Define the colors table
local colors = {
	-- Base colors
	Normal = { fg = "#C4C5E9", bg = "None" },
	NormalFloat = { fg = "#C4C5E9", bg = "None" },
	Boolean = { fg = "#765673" },
	Character = { fg = "#C4C5E9" },
	Comment = { fg = "#624E6E" },
	Conditional = { fg = "#B440D4" },
	Constant = { fg = "#B657FF" },
	CursorLine = { bg = "#18193F" },
	CursorLineNr = { fg = "#9B88E2" },
	Define = { fg = "#765674" },
	EndOfBuffer = { fg = "#FA9EBD" },
	Exception = { fg = "#B440D4" },
	Float = { fg = "#F25AE5" },
	Function = { fg = "#E39CBE" },
	Identifier = { fg = "#E0E0E0" },
	Include = { fg = "#765674" },
	Keyword = { fg = "#B440D4" },
	Label = { fg = "#B440D4" },
	LineNr = { fg = "#FA9EBD" },
	Macro = { fg = "#765674" },
	Number = { fg = "#F25AE5" },
	Operator = { fg = "#B440D4" },
	PreCondit = { fg = "#765674" },
	PreProc = { fg = "#765674" },
	Repeat = { fg = "#B440D4" },
	Search = { fg = "#333333", bg = "#FFE894" },
	SignColumn = { bg = "None" },
	Special = {},
	Statement = { fg = "#B440D4" },
	StatusLine = { fg = "#FFFFFF", bg = "None" },
	StorageClass = { fg = "#8E95F0" },
	String = { fg = "#F5B2F0" },
	Structure = { fg = "#8E95F0" },
	TermCursor = { fg = "#FFFFFF" },
	Type = { fg = "#8E95F0" },
	Typedef = { fg = "#8E95F0" },
	Visual = { fg = "#22740B", bg = "#9B88E2" },

	-- Custom colors
	winterGreen = { bg = "#3B3328" },
	winterYellow = { bg = "#49443C" },
	winterRed = { bg = "#43242B" },
	winterBlue = { bg = "#252535" },
	autumnGreen = { bg = "#76946A" },
	autumnRed = { bg = "#C34043" },
	autumnYellow = { bg = "#DCA561" },

	-- Highlight annotations
	["@function"] = { fg = "#F5B2F0" },
	["@keyword"] = { fg = "#8E6EA6" },
	["@parameter"] = { fg = "#E0CFED" },
	["@storageclass"] = { fg = "#B657FF" },
	["@tag"] = { fg = "#A39EFA" },
	["@type.definition"] = { fg = "#A39EFA" },
	["@variable"] = { fg = "#FDFDF7" },
}

-- Clear existing highlights and set terminal colors
vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='my_theme'")

-- Apply highlight groups
for group, attrs in pairs(colors) do
	vim.api.nvim_set_hl(0, group, attrs)
end

-- Return the colors table
return colors
