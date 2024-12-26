require("plugins")

vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = "#ebdbb2", bg = "NONE" })
vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#928374", bg = "NONE", strikethrough = true })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#fabd2f", bg = "NONE", bold = true })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#fabd2f", bg = "NONE", bold = true })
vim.api.nvim_set_hl(0, "CmpItemKind", { fg = "#8ec07c", bg = "NONE" })
vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#d3869b", bg = "NONE" })
