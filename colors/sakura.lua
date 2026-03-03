-- Sakura colorscheme for Neovim
-- Clean implementation with proper syntax highlighting and transparency support

local vim = vim

-- Clear existing highlights
vim.cmd 'highlight clear'
if vim.fn.exists 'syntax_on' then
  vim.cmd 'syntax reset'
end

-- Color palette
local colors = {
  bg = 'NONE', -- NONE for transparency support
  bg_solid = '#1a1a2e', -- solid bg for UI elements that need it
  fg = '#f8f8f2',
  comment = '#6272a4',

  -- Main colors for syntax
  pink = '#ff8080',
  purple = '#d588e6',
  yellow = '#f1fa8c',
  green = '#50fa7b',
  cyan = '#8be9fd',
  red = '#ff5555',
  orange = '#ffb86c',
  white = '#f8f8f2',

  -- UI colors
  selection = '#303040',
  line_nr = '#4a4a6a',
}

-- Basic highlights (bg = NONE for transparency)
vim.api.nvim_set_hl(0, 'Normal', { fg = colors.white, bg = colors.bg })
vim.api.nvim_set_hl(0, 'NormalNC', { fg = colors.white, bg = colors.bg })
vim.api.nvim_set_hl(0, 'NormalFloat', { fg = colors.white, bg = colors.bg_solid })

-- Syntax highlighting groups (essential for vim syntax)
vim.api.nvim_set_hl(0, 'Comment', { fg = colors.comment, italic = true })
vim.api.nvim_set_hl(0, 'Constant', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'String', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'Character', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'Number', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'Float', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'Boolean', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'Identifier', { fg = colors.cyan })
vim.api.nvim_set_hl(0, 'Function', { fg = colors.green, bold = true })
vim.api.nvim_set_hl(0, 'Statement', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'Keyword', { fg = colors.pink, bold = true })
vim.api.nvim_set_hl(0, 'Conditional', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'Repeat', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'Label', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'Operator', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'Type', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'StorageClass', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'Structure', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'Typedef', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'PreProc', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'Include', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'Define', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'Macro', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'Special', { fg = colors.orange })
vim.api.nvim_set_hl(0, 'SpecialChar', { fg = colors.orange })
vim.api.nvim_set_hl(0, 'Tag', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'Delimiter', { fg = colors.white })
vim.api.nvim_set_hl(0, 'SpecialComment', { fg = colors.comment })
vim.api.nvim_set_hl(0, 'Debug', { fg = colors.orange })
vim.api.nvim_set_hl(0, 'Underlined', { fg = colors.cyan, underline = true })
vim.api.nvim_set_hl(0, 'Bold', { bold = true })
vim.api.nvim_set_hl(0, 'Italic', { italic = true })
vim.api.nvim_set_hl(0, 'Exception', { fg = colors.red })
vim.api.nvim_set_hl(0, 'Error', { fg = colors.red })
vim.api.nvim_set_hl(0, 'Todo', { fg = colors.bg_solid, bg = colors.yellow, bold = true })
vim.api.nvim_set_hl(0, 'Title', { fg = colors.purple, bold = true })

-- Treesitter highlights
vim.api.nvim_set_hl(0, '@variable', { fg = colors.white })
vim.api.nvim_set_hl(0, '@variable.builtin', { fg = colors.red })
vim.api.nvim_set_hl(0, '@variable.parameter', { fg = colors.cyan })
vim.api.nvim_set_hl(0, '@variable.member', { fg = colors.cyan })
vim.api.nvim_set_hl(0, '@constant', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@constant.builtin', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@constant.macro', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@string', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@string.escape', { fg = colors.orange })
vim.api.nvim_set_hl(0, '@string.regex', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@string.special', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@character', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@number', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@number.float', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@boolean', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@function', { fg = colors.green, bold = true })
vim.api.nvim_set_hl(0, '@function.builtin', { fg = colors.green })
vim.api.nvim_set_hl(0, '@function.call', { fg = colors.green })
vim.api.nvim_set_hl(0, '@function.macro', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@method', { fg = colors.green })
vim.api.nvim_set_hl(0, '@method.call', { fg = colors.green })
vim.api.nvim_set_hl(0, '@keyword', { fg = colors.pink, bold = true })
vim.api.nvim_set_hl(0, '@keyword.function', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@keyword.return', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@keyword.operator', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@keyword.conditional', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@keyword.repeat', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@keyword.import', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@keyword.exception', { fg = colors.red })
vim.api.nvim_set_hl(0, '@type', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@type.builtin', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@type.definition', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@type.qualifier', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@comment', { fg = colors.comment, italic = true })
vim.api.nvim_set_hl(0, '@comment.todo', { fg = colors.bg_solid, bg = colors.yellow, bold = true })
vim.api.nvim_set_hl(0, '@comment.note', { fg = colors.comment })
vim.api.nvim_set_hl(0, '@comment.warning', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@comment.error', { fg = colors.red })
vim.api.nvim_set_hl(0, '@operator', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@punctuation', { fg = colors.white })
vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = colors.white })
vim.api.nvim_set_hl(0, '@punctuation.delimiter', { fg = colors.white })
vim.api.nvim_set_hl(0, '@punctuation.special', { fg = colors.orange })
vim.api.nvim_set_hl(0, '@property', { fg = colors.cyan })
vim.api.nvim_set_hl(0, '@field', { fg = colors.cyan })
vim.api.nvim_set_hl(0, '@parameter', { fg = colors.cyan })
vim.api.nvim_set_hl(0, '@constructor', { fg = colors.green })
vim.api.nvim_set_hl(0, '@module', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@namespace', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@conditional', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@repeat', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@exception', { fg = colors.red })
vim.api.nvim_set_hl(0, '@include', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@label', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@attribute', { fg = colors.purple })
vim.api.nvim_set_hl(0, '@tag', { fg = colors.pink })
vim.api.nvim_set_hl(0, '@tag.attribute', { fg = colors.cyan })
vim.api.nvim_set_hl(0, '@tag.delimiter', { fg = colors.white })

-- Markup (markdown)
vim.api.nvim_set_hl(0, '@markup.heading', { fg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, '@markup.bold', { bold = true })
vim.api.nvim_set_hl(0, '@markup.italic', { italic = true })
vim.api.nvim_set_hl(0, '@markup.link', { fg = colors.cyan, underline = true })
vim.api.nvim_set_hl(0, '@markup.raw', { fg = colors.yellow })
vim.api.nvim_set_hl(0, '@markup.list', { fg = colors.orange })

-- UI elements
vim.api.nvim_set_hl(0, 'Cursor', { fg = colors.bg_solid, bg = colors.pink })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = colors.selection })
vim.api.nvim_set_hl(0, 'CursorColumn', { bg = colors.selection })
vim.api.nvim_set_hl(0, 'ColorColumn', { bg = colors.selection })
vim.api.nvim_set_hl(0, 'LineNr', { fg = colors.line_nr })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.pink, bold = true })
vim.api.nvim_set_hl(0, 'Search', { fg = colors.bg_solid, bg = colors.yellow })
vim.api.nvim_set_hl(0, 'IncSearch', { fg = colors.bg_solid, bg = colors.pink })
vim.api.nvim_set_hl(0, 'Visual', { bg = colors.selection })
vim.api.nvim_set_hl(0, 'StatusLine', { fg = colors.bg_solid, bg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = colors.comment, bg = colors.bg })
vim.api.nvim_set_hl(0, 'TabLine', { fg = colors.comment, bg = colors.bg })
vim.api.nvim_set_hl(0, 'TabLineSel', { fg = colors.bg_solid, bg = colors.purple })
vim.api.nvim_set_hl(0, 'TabLineFill', { bg = colors.bg })
vim.api.nvim_set_hl(0, 'MatchParen', { fg = colors.bg_solid, bg = colors.pink, bold = true })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = colors.bg })
vim.api.nvim_set_hl(0, 'FoldColumn', { fg = colors.comment, bg = colors.bg })
vim.api.nvim_set_hl(0, 'Folded', { fg = colors.comment, bg = colors.selection })
vim.api.nvim_set_hl(0, 'Pmenu', { fg = colors.white, bg = colors.bg_solid })
vim.api.nvim_set_hl(0, 'PmenuSel', { fg = colors.bg_solid, bg = colors.purple })
vim.api.nvim_set_hl(0, 'PmenuSbar', { bg = colors.selection })
vim.api.nvim_set_hl(0, 'PmenuThumb', { bg = colors.purple })
vim.api.nvim_set_hl(0, 'WildMenu', { fg = colors.bg_solid, bg = colors.pink })
vim.api.nvim_set_hl(0, 'VertSplit', { fg = colors.selection })
vim.api.nvim_set_hl(0, 'WinSeparator', { fg = colors.selection })
vim.api.nvim_set_hl(0, 'NonText', { fg = colors.selection })
vim.api.nvim_set_hl(0, 'SpecialKey', { fg = colors.selection })
vim.api.nvim_set_hl(0, 'Whitespace', { fg = colors.selection })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = colors.bg })
vim.api.nvim_set_hl(0, 'Directory', { fg = colors.cyan })
vim.api.nvim_set_hl(0, 'Question', { fg = colors.green })
vim.api.nvim_set_hl(0, 'Conceal', { fg = colors.comment })

-- Float window
vim.api.nvim_set_hl(0, 'FloatBorder', { fg = colors.purple, bg = colors.bg_solid })
vim.api.nvim_set_hl(0, 'FloatTitle', { fg = colors.pink, bg = colors.bg_solid, bold = true })

-- Diagnostics
vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = colors.red })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { fg = colors.cyan })
vim.api.nvim_set_hl(0, 'DiagnosticHint', { fg = colors.green })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = colors.red })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = colors.yellow })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = colors.cyan })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = colors.green })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = colors.red })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { fg = colors.cyan })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { fg = colors.green })
vim.api.nvim_set_hl(0, 'DiagnosticFloatingError', { fg = colors.red })
vim.api.nvim_set_hl(0, 'DiagnosticFloatingWarn', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'DiagnosticFloatingInfo', { fg = colors.cyan })
vim.api.nvim_set_hl(0, 'DiagnosticFloatingHint', { fg = colors.green })
vim.api.nvim_set_hl(0, 'DiagnosticSignError', { fg = colors.red })
vim.api.nvim_set_hl(0, 'DiagnosticSignWarn', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'DiagnosticSignInfo', { fg = colors.cyan })
vim.api.nvim_set_hl(0, 'DiagnosticSignHint', { fg = colors.green })

-- Git signs
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = colors.green })
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = colors.red })

-- Diff
vim.api.nvim_set_hl(0, 'DiffAdd', { fg = colors.green, bg = '#2d3a2d' })
vim.api.nvim_set_hl(0, 'DiffChange', { fg = colors.yellow, bg = '#3a2d3a' })
vim.api.nvim_set_hl(0, 'DiffDelete', { fg = colors.red, bg = '#3a2d2d' })
vim.api.nvim_set_hl(0, 'DiffText', { fg = colors.white, bg = '#4a3a4a' })

-- Messages
vim.api.nvim_set_hl(0, 'ErrorMsg', { fg = colors.red })
vim.api.nvim_set_hl(0, 'WarningMsg', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'ModeMsg', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'MoreMsg', { fg = colors.green })

-- Telescope
vim.api.nvim_set_hl(0, 'TelescopeNormal', { fg = colors.white, bg = colors.bg_solid })
vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = colors.purple, bg = colors.bg_solid })
vim.api.nvim_set_hl(0, 'TelescopeSelection', { bg = colors.selection, bold = true })
vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = colors.pink, bold = true })
vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { fg = colors.white, bg = colors.bg_solid })
vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg = colors.purple, bg = colors.bg_solid })
vim.api.nvim_set_hl(0, 'TelescopePromptTitle', { fg = colors.pink, bg = colors.bg_solid, bold = true })
vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { fg = colors.white, bg = colors.bg_solid })
vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { fg = colors.purple, bg = colors.bg_solid })
vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { fg = colors.white, bg = colors.bg_solid })
vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { fg = colors.purple, bg = colors.bg_solid })

-- WhichKey
vim.api.nvim_set_hl(0, 'WhichKey', { fg = colors.purple })
vim.api.nvim_set_hl(0, 'WhichKeyGroup', { fg = colors.pink, bold = true })
vim.api.nvim_set_hl(0, 'WhichKeyDesc', { fg = colors.cyan })
vim.api.nvim_set_hl(0, 'WhichKeySeparator', { fg = colors.comment })
vim.api.nvim_set_hl(0, 'WhichKeyFloat', { bg = colors.bg_solid })

-- Lualine
vim.api.nvim_set_hl(0, 'LualineA_normal', { fg = colors.bg_solid, bg = colors.purple })
vim.api.nvim_set_hl(0, 'LualineB_normal', { fg = colors.white, bg = colors.selection })
vim.api.nvim_set_hl(0, 'LualineC_normal', { fg = colors.white, bg = colors.bg })

-- Mini tabline
vim.api.nvim_set_hl(0, 'MiniTablineCurrent', { fg = colors.bg_solid, bg = colors.purple, bold = true })
vim.api.nvim_set_hl(0, 'MiniTablineHidden', { fg = colors.comment, bg = colors.bg })
vim.api.nvim_set_hl(0, 'MiniTablineFill', { bg = colors.bg })
vim.api.nvim_set_hl(0, 'MiniTablineVisible', { fg = colors.white, bg = colors.selection })
vim.api.nvim_set_hl(0, 'MiniTablineModifiedCurrent', { fg = colors.bg_solid, bg = colors.pink, bold = true })
vim.api.nvim_set_hl(0, 'MiniTablineModifiedHidden', { fg = colors.pink, bg = colors.bg })
vim.api.nvim_set_hl(0, 'MiniTablineModifiedVisible', { fg = colors.pink, bg = colors.selection })

-- Indent blankline
vim.api.nvim_set_hl(0, 'IblIndent', { fg = colors.selection })
vim.api.nvim_set_hl(0, 'IblScope', { fg = colors.purple })

-- Lazy
vim.api.nvim_set_hl(0, 'LazyNormal', { fg = colors.white, bg = colors.bg_solid })
vim.api.nvim_set_hl(0, 'LazyButton', { fg = colors.white, bg = colors.selection })
vim.api.nvim_set_hl(0, 'LazyButtonActive', { fg = colors.bg_solid, bg = colors.purple })

-- CMP
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { fg = colors.pink, bold = true })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { fg = colors.green })
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { fg = colors.cyan })
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { fg = colors.pink })
vim.api.nvim_set_hl(0, 'CmpItemKindText', { fg = colors.white })
vim.api.nvim_set_hl(0, 'CmpItemKindSnippet', { fg = colors.orange })
vim.api.nvim_set_hl(0, 'CmpItemKindClass', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'CmpItemKindModule', { fg = colors.yellow })
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { fg = colors.cyan })
vim.api.nvim_set_hl(0, 'CmpItemKindField', { fg = colors.cyan })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { fg = colors.green })
