-- USGC HIGHK Colorscheme for Neovim
-- Port of USGC-HIGHK-ST.sublime-color-scheme
-- Original by U.S. Graphics Company (BSD-3-Clause License)
-- Port by: Community
-- Description: Light theme with black on white (High dielectric constant)

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'usgc-highk'
vim.o.background = 'light'

-- USGC Standard Color Palette
local colors = {
  -- Primary colors
  black       = '#000000',
  white       = '#FFFFFF',
  
  -- Fluorescent colors
  fl_red      = '#FF0000',
  fl_green    = '#00FF00',
  fl_blue     = '#0000FF',
  fl_cyan     = '#00FFFF',
  fl_magenta  = '#FF00FF',
  fl_yellow   = '#FFFF00',
  fl_orange   = '#FF6600',
  
  -- Standard colors
  maroon      = '#660000',
  green       = '#00A645',
  blue        = '#000066',
  cyan        = '#006666',
  magenta     = '#660066',
  yellow      = '#FFBF00',
  olive       = '#666600',
  gray        = '#999999',
  
  -- UI-specific colors for HIGHK (light theme)
  bg          = '#FFFFFF',
  fg          = '#000000',
  cursor_line = '#F0F0F0',
  selection   = '#00FF00',
  comment     = '#666600',  -- olive for comments
  line_nr     = '#999999',  -- gray for line numbers
  cursor      = '#0000FF',
}

-- Helper function to set highlight groups
local function hi(group, opts)
  local cmd = 'highlight ' .. group
  if opts.fg then cmd = cmd .. ' guifg=' .. opts.fg end
  if opts.bg then cmd = cmd .. ' guibg=' .. opts.bg end
  if opts.gui then cmd = cmd .. ' gui=' .. opts.gui end
  if opts.sp then cmd = cmd .. ' guisp=' .. opts.sp end
  vim.cmd(cmd)
end

-- Editor UI
hi('Normal', { fg = colors.fg, bg = colors.bg })
hi('NormalFloat', { fg = colors.fg, bg = colors.bg })
hi('FloatBorder', { fg = colors.gray, bg = colors.bg })
hi('Cursor', { fg = colors.bg, bg = colors.cursor })
hi('lCursor', { fg = colors.bg, bg = colors.cursor })
hi('CursorIM', { fg = colors.bg, bg = colors.cursor })
hi('TermCursor', { fg = colors.bg, bg = colors.cursor })
hi('TermCursorNC', { fg = colors.bg, bg = colors.cursor })
hi('CursorLine', { bg = colors.cursor_line })
hi('CursorLineNr', { fg = colors.fg, bg = colors.cursor_line })
hi('LineNr', { fg = colors.line_nr })
hi('SignColumn', { fg = colors.line_nr, bg = colors.bg })
hi('Visual', { bg = colors.selection })
hi('VisualNOS', { bg = colors.selection })
hi('Search', { fg = colors.black, bg = colors.yellow })
hi('IncSearch', { fg = colors.black, bg = colors.fl_orange })
hi('CurSearch', { fg = colors.black, bg = colors.fl_orange })
hi('MatchParen', { fg = colors.fl_red, gui = 'bold' })
hi('ColorColumn', { bg = colors.cursor_line })
hi('Conceal', { fg = colors.gray })
hi('Directory', { fg = colors.blue, gui = 'bold' })
hi('ErrorMsg', { fg = colors.fl_red, bg = colors.bg })
hi('WarningMsg', { fg = colors.fl_orange, bg = colors.bg })
hi('ModeMsg', { fg = colors.green, gui = 'bold' })
hi('MoreMsg', { fg = colors.green, gui = 'bold' })
hi('Question', { fg = colors.green })
hi('StatusLine', { fg = colors.fg, bg = colors.cursor_line })
hi('StatusLineNC', { fg = colors.gray, bg = colors.cursor_line })
hi('TabLine', { fg = colors.gray, bg = colors.cursor_line })
hi('TabLineFill', { bg = colors.cursor_line })
hi('TabLineSel', { fg = colors.fg, bg = colors.bg, gui = 'bold' })
hi('VertSplit', { fg = colors.gray, bg = colors.bg })
hi('WinSeparator', { fg = colors.gray, bg = colors.bg })
hi('Folded', { fg = colors.gray, bg = colors.cursor_line })
hi('FoldColumn', { fg = colors.gray, bg = colors.bg })
hi('Pmenu', { fg = colors.fg, bg = colors.cursor_line })
hi('PmenuSel', { fg = colors.bg, bg = colors.fg })
hi('PmenuSbar', { bg = colors.gray })
hi('PmenuThumb', { bg = colors.fg })
hi('SpecialKey', { fg = colors.gray })
hi('NonText', { fg = colors.gray })
hi('Whitespace', { fg = colors.gray })
hi('Title', { fg = colors.blue, gui = 'bold' })

-- Syntax highlighting
hi('Comment', { fg = colors.comment, gui = 'italic' })
hi('Constant', { fg = colors.blue })
hi('String', { fg = colors.maroon })
hi('Character', { fg = colors.maroon })
hi('Number', { fg = colors.blue })
hi('Boolean', { fg = colors.blue })
hi('Float', { fg = colors.blue })
hi('Identifier', { fg = colors.fg })
hi('Function', { fg = colors.magenta, gui = 'bold' })
hi('Statement', { fg = colors.green, gui = 'bold' })
hi('Conditional', { fg = colors.green, gui = 'bold' })
hi('Repeat', { fg = colors.green, gui = 'bold' })
hi('Label', { fg = colors.green })
hi('Operator', { fg = colors.fg })
hi('Keyword', { fg = colors.green, gui = 'bold' })
hi('Exception', { fg = colors.fl_red, gui = 'bold' })
hi('PreProc', { fg = colors.cyan })
hi('Include', { fg = colors.cyan })
hi('Define', { fg = colors.cyan })
hi('Macro', { fg = colors.cyan })
hi('PreCondit', { fg = colors.cyan })
hi('Type', { fg = colors.blue, gui = 'bold' })
hi('StorageClass', { fg = colors.blue })
hi('Structure', { fg = colors.blue })
hi('Typedef', { fg = colors.blue })
hi('Special', { fg = colors.magenta })
hi('SpecialChar', { fg = colors.magenta })
hi('Tag', { fg = colors.green })
hi('Delimiter', { fg = colors.fg })
hi('SpecialComment', { fg = colors.gray, gui = 'italic' })
hi('Debug', { fg = colors.fl_red })
hi('Underlined', { fg = colors.blue, gui = 'underline' })
hi('Ignore', { fg = colors.gray })
hi('Error', { fg = colors.fl_red, bg = colors.bg, gui = 'bold' })
hi('Todo', { fg = colors.fl_orange, bg = colors.bg, gui = 'bold' })

-- Tree-sitter syntax groups
-- These provide more granular syntax highlighting
hi('@variable', { fg = colors.fg })
hi('@variable.builtin', { fg = colors.blue })
hi('@variable.parameter', { fg = colors.fg })
hi('@variable.member', { fg = colors.fg })

hi('@constant', { fg = colors.blue })
hi('@constant.builtin', { fg = colors.blue, gui = 'bold' })
hi('@constant.macro', { fg = colors.cyan })

hi('@module', { fg = colors.cyan })
hi('@label', { fg = colors.green })

hi('@string', { fg = colors.maroon })
hi('@string.regex', { fg = colors.magenta })
hi('@string.escape', { fg = colors.magenta })
hi('@string.special', { fg = colors.magenta })

hi('@character', { fg = colors.maroon })
hi('@character.special', { fg = colors.magenta })

hi('@number', { fg = colors.blue })
hi('@number.float', { fg = colors.blue })

hi('@boolean', { fg = colors.blue })

hi('@annotation', { fg = colors.gray })
hi('@attribute', { fg = colors.cyan })
hi('@error', { fg = colors.fl_red })

hi('@keyword', { fg = colors.green, gui = 'bold' })
hi('@keyword.function', { fg = colors.green, gui = 'bold' })
hi('@keyword.operator', { fg = colors.green })
hi('@keyword.return', { fg = colors.green, gui = 'bold' })
hi('@keyword.conditional', { fg = colors.green, gui = 'bold' })
hi('@keyword.repeat', { fg = colors.green, gui = 'bold' })
hi('@keyword.import', { fg = colors.cyan })
hi('@keyword.exception', { fg = colors.fl_red, gui = 'bold' })

hi('@function', { fg = colors.magenta, gui = 'bold' })
hi('@function.builtin', { fg = colors.magenta, gui = 'bold' })
hi('@function.macro', { fg = colors.cyan })
hi('@function.method', { fg = colors.magenta, gui = 'bold' })

hi('@constructor', { fg = colors.blue, gui = 'bold' })

hi('@operator', { fg = colors.fg })

hi('@punctuation.delimiter', { fg = colors.fg })
hi('@punctuation.bracket', { fg = colors.fg })
hi('@punctuation.special', { fg = colors.magenta })

hi('@comment', { fg = colors.comment, gui = 'italic' })
hi('@comment.documentation', { fg = colors.gray, gui = 'italic' })
hi('@comment.error', { fg = colors.fl_red, gui = 'bold' })
hi('@comment.warning', { fg = colors.fl_orange, gui = 'bold' })
hi('@comment.todo', { fg = colors.fl_orange, gui = 'bold' })
hi('@comment.note', { fg = colors.green, gui = 'bold' })

hi('@markup.strong', { gui = 'bold' })
hi('@markup.italic', { gui = 'italic' })
hi('@markup.underline', { gui = 'underline' })
hi('@markup.strike', { gui = 'strikethrough' })
hi('@markup.heading', { fg = colors.blue, gui = 'bold' })
hi('@markup.link', { fg = colors.blue, gui = 'underline' })
hi('@markup.link.url', { fg = colors.cyan, gui = 'underline' })
hi('@markup.link.label', { fg = colors.magenta })
hi('@markup.raw', { fg = colors.maroon })
hi('@markup.list', { fg = colors.green })
hi('@markup.quote', { fg = colors.gray, gui = 'italic' })

hi('@type', { fg = colors.blue, gui = 'bold' })
hi('@type.builtin', { fg = colors.blue, gui = 'bold' })
hi('@type.definition', { fg = colors.blue, gui = 'bold' })
hi('@type.qualifier', { fg = colors.green })

hi('@property', { fg = colors.fg })
hi('@field', { fg = colors.fg })

hi('@tag', { fg = colors.green })
hi('@tag.attribute', { fg = colors.magenta })
hi('@tag.delimiter', { fg = colors.fg })

-- Diff highlighting
hi('DiffAdd', { fg = colors.green, bg = colors.bg })
hi('DiffChange', { fg = colors.yellow, bg = colors.bg })
hi('DiffDelete', { fg = colors.fl_red, bg = colors.bg })
hi('DiffText', { fg = colors.fg, bg = colors.yellow })

-- Git signs
hi('GitSignsAdd', { fg = colors.green })
hi('GitSignsChange', { fg = colors.yellow })
hi('GitSignsDelete', { fg = colors.fl_red })

-- Telescope
hi('TelescopeBorder', { fg = colors.gray })
hi('TelescopePromptBorder', { fg = colors.gray })
hi('TelescopeResultsBorder', { fg = colors.gray })
hi('TelescopePreviewBorder', { fg = colors.gray })
hi('TelescopeSelection', { fg = colors.fg, bg = colors.selection })
hi('TelescopeSelectionCaret', { fg = colors.green, bg = colors.selection })
hi('TelescopeMultiSelection', { fg = colors.magenta, bg = colors.selection })
hi('TelescopeMatching', { fg = colors.blue, gui = 'bold' })

-- LSP
hi('LspReferenceText', { bg = colors.selection })
hi('LspReferenceRead', { bg = colors.selection })
hi('LspReferenceWrite', { bg = colors.selection })

-- Diagnostic
hi('DiagnosticError', { fg = colors.fl_red })
hi('DiagnosticWarn', { fg = colors.fl_orange })
hi('DiagnosticInfo', { fg = colors.cyan })
hi('DiagnosticHint', { fg = colors.gray })
hi('DiagnosticUnderlineError', { sp = colors.fl_red, gui = 'undercurl' })
hi('DiagnosticUnderlineWarn', { sp = colors.fl_orange, gui = 'undercurl' })
hi('DiagnosticUnderlineInfo', { sp = colors.cyan, gui = 'undercurl' })
hi('DiagnosticUnderlineHint', { sp = colors.gray, gui = 'undercurl' })

-- Completion menu
hi('CmpItemAbbrMatch', { fg = colors.blue, gui = 'bold' })
hi('CmpItemAbbrMatchFuzzy', { fg = colors.blue })
hi('CmpItemKind', { fg = colors.magenta })
hi('CmpItemMenu', { fg = colors.gray })

-- WhichKey
hi('WhichKey', { fg = colors.magenta })
hi('WhichKeyGroup', { fg = colors.green })
hi('WhichKeyDesc', { fg = colors.fg })
hi('WhichKeySeparator', { fg = colors.gray })
hi('WhichKeyFloat', { bg = colors.bg })

-- Neo-tree / NvimTree
hi('NeoTreeNormal', { fg = colors.fg, bg = colors.bg })
hi('NeoTreeNormalNC', { fg = colors.fg, bg = colors.bg })
hi('NeoTreeDirectoryIcon', { fg = colors.blue })
hi('NeoTreeDirectoryName', { fg = colors.blue })
hi('NeoTreeFileName', { fg = colors.fg })
hi('NeoTreeFileIcon', { fg = colors.gray })
hi('NeoTreeGitAdded', { fg = colors.green })
hi('NeoTreeGitModified', { fg = colors.yellow })
hi('NeoTreeGitDeleted', { fg = colors.fl_red })
hi('NvimTreeFolderIcon', { fg = colors.blue })
hi('NvimTreeFolderName', { fg = colors.blue })
hi('NvimTreeOpenedFolderName', { fg = colors.blue, gui = 'bold' })
hi('NvimTreeGitDirty', { fg = colors.yellow })
hi('NvimTreeGitNew', { fg = colors.green })
hi('NvimTreeGitDeleted', { fg = colors.fl_red })

-- Indent Blankline
hi('IndentBlanklineChar', { fg = colors.cursor_line })
hi('IndentBlanklineContextChar', { fg = colors.gray })

-- Dashboard
hi('DashboardHeader', { fg = colors.blue, gui = 'bold' })
hi('DashboardCenter', { fg = colors.green })
hi('DashboardShortCut', { fg = colors.magenta })
hi('DashboardFooter', { fg = colors.gray, gui = 'italic' })

-- Notify
hi('NotifyERRORBorder', { fg = colors.fl_red })
hi('NotifyWARNBorder', { fg = colors.fl_orange })
hi('NotifyINFOBorder', { fg = colors.cyan })
hi('NotifyDEBUGBorder', { fg = colors.gray })
hi('NotifyTRACEBorder', { fg = colors.magenta })
hi('NotifyERRORIcon', { fg = colors.fl_red })
hi('NotifyWARNIcon', { fg = colors.fl_orange })
hi('NotifyINFOIcon', { fg = colors.cyan })
hi('NotifyDEBUGIcon', { fg = colors.gray })
hi('NotifyTRACEIcon', { fg = colors.magenta })
hi('NotifyERRORTitle', { fg = colors.fl_red })
hi('NotifyWARNTitle', { fg = colors.fl_orange })
hi('NotifyINFOTitle', { fg = colors.cyan })
hi('NotifyDEBUGTitle', { fg = colors.gray })
hi('NotifyTRACETitle', { fg = colors.magenta })

-- Trouble
hi('TroubleText', { fg = colors.fg })
hi('TroubleCount', { fg = colors.magenta })
hi('TroubleNormal', { fg = colors.fg, bg = colors.bg })

-- Gitsigns
hi('GitSignsCurrentLineBlame', { fg = colors.gray, gui = 'italic' })

-- Leap
hi('LeapMatch', { fg = colors.fl_orange, gui = 'bold,underline' })
hi('LeapLabelPrimary', { fg = colors.fl_red, gui = 'bold' })
hi('LeapLabelSecondary', { fg = colors.green, gui = 'bold' })

-- Terminal colors
vim.g.terminal_color_0  = colors.black
vim.g.terminal_color_1  = colors.maroon
vim.g.terminal_color_2  = colors.green
vim.g.terminal_color_3  = colors.yellow
vim.g.terminal_color_4  = colors.blue
vim.g.terminal_color_5  = colors.magenta
vim.g.terminal_color_6  = colors.cyan
vim.g.terminal_color_7  = colors.gray
vim.g.terminal_color_8  = colors.gray
vim.g.terminal_color_9  = colors.fl_red
vim.g.terminal_color_10 = colors.fl_green
vim.g.terminal_color_11 = colors.fl_yellow
vim.g.terminal_color_12 = colors.fl_blue
vim.g.terminal_color_13 = colors.fl_magenta
vim.g.terminal_color_14 = colors.fl_cyan
vim.g.terminal_color_15 = colors.white
