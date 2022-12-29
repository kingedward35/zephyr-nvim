-- Theme: zephyr
-- Author: Glepnir
-- License: MIT
-- Source: http://github.com/glepnir/zephyr-nvim
local util = require("tokyonight.util")
local zephyr = {
  base0 = "#1B2229",
  base1 = "#1c1f24",
  base2 = "#202328",
  base3 = "#23272e",
  base4 = "#3f444a",
  base5 = "#5B6268",
  base6 = "#73797e",
  base7 = "#9ca0a4",
  base8 = "#b1b1b1",

  bg = "#000000",
  bg1 = "#504945",
  -- bg_popup = '#100e1c';
  bg_popup = "#171321",
  bg_highlight = "#2E323C",
  bg_visual = "#b3deef",

  fg = "#bbc2cf",
  fg_alt = "#5B6268",

  red = "#ef596f",

  redwine = "#d16d9e",
  orange = "#d19a66",
  yellow = "#e5c07b",

  light_green = "#abcf84",
  green = "#87c976",
  dark_green = "#98be65",

  cyan = "#36d0e0",
  blue = "#61afef",
  violet = "#b294bb",
  magenta = "#d55fdd",
  teal = "#1abc9c",
  grey = "#928374",
  brown = "#c78665",
  black = "#000000",

  bracket = "#80A0C2",
  currsor_bg = "#4f5b66",
  none = "NONE",
  -- git = { change = "#6183bb", add = "#449dab", delete = "#914c54", conflict = "#bb7a61" },
  diff = {
    add = util.darken("#3a9b1a", 0.45),
    delete = util.darken("#c90a0a", 0.30),
    change = util.darken("#6183bb", 0.35),
    text = util.darken("#6183bb", 0.55),
    -- text = "#6183bb",
    -- text = "#bbc2cf",
  },
}

function zephyr.terminal_color()
  vim.g.terminal_color_0 = zephyr.bg
  vim.g.terminal_color_1 = zephyr.ed
  vim.g.terminal_color_2 = zephyr.green
  vim.g.terminal_color_3 = zephyr.yellow
  vim.g.terminal_color_4 = zephyr.blue
  vim.g.terminal_color_5 = zephyr.violet
  vim.g.terminal_color_6 = zephyr.cyan
  vim.g.terminal_color_7 = zephyr.bg1
  vim.g.terminal_color_8 = zephyr.brown
  vim.g.terminal_color_9 = zephyr.red
  vim.g.terminal_color_10 = zephyr.green
  vim.g.terminal_color_11 = zephyr.yellow
  vim.g.terminal_color_12 = zephyr.blue
  vim.g.terminal_color_13 = zephyr.violet
  vim.g.terminal_color_14 = zephyr.cyan
  vim.g.terminal_color_15 = zephyr.fg
end

function zephyr.highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""
  vim.api.nvim_command("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

function zephyr.load_syntax()
  local syntax = {
    Normal = { fg = zephyr.fg, bg = zephyr.bg },
    Terminal = { fg = zephyr.fg, bg = zephyr.bg },
    SignColumn = { fg = zephyr.fg, bg = zephyr.bg },
    FoldColumn = { fg = zephyr.fg_alt, bg = zephyr.black },
    VertSplit = { fg = zephyr.black, bg = zephyr.bg },
    Folded = { fg = zephyr.grey, bg = zephyr.bg_highlight },
    EndOfBuffer = { fg = zephyr.bg, bg = zephyr.none },
    IncSearch = { fg = zephyr.bg1, bg = zephyr.orange, style = zephyr.none },
    Search = { fg = zephyr.bg, bg = zephyr.orange },
    ColorColumn = { fg = zephyr.none, bg = zephyr.bg_highlight },
    Conceal = { fg = zephyr.grey, bg = zephyr.none },
    Cursor = { fg = zephyr.none, bg = zephyr.none, reverse = true },
    vCursor = { fg = zephyr.none, bg = zephyr.none, reverse = true },
    iCursor = { fg = zephyr.none, bg = zephyr.none, reverse = true },
    lCursor = { fg = zephyr.none, bg = zephyr.none, reverse = true },
    CursorIM = { fg = zephyr.none, bg = zephyr.none, reverse = true },
    CursorColumn = { fg = zephyr.none, bg = zephyr.bg_highlight },
    CursorLine = { fg = zephyr.none, bg = zephyr.bg_highlight },
    LineNr = { fg = zephyr.base4 },
    qfLineNr = { fg = zephyr.cyan },
    CursorLineNr = { fg = zephyr.blue },
    DiffAdd = { bg = zephyr.diff.add },
    DiffChange = { bg = zephyr.diff.change },
    DiffDelete = { bg = zephyr.diff.delete },
    DiffText = { bg = zephyr.diff.text },
    Directory = { fg = zephyr.blue, bg = zephyr.none },
    ErrorMsg = { fg = zephyr.red, bg = zephyr.none, bold = true },
    WarningMsg = { fg = zephyr.yellow, bg = zephyr.none, bold = true },
    ModeMsg = { fg = zephyr.fg, bg = zephyr.none, bold = true },
    MatchParen = { fg = zephyr.red, bg = zephyr.none },
    NonText = { fg = zephyr.bg1 },
    Whitespace = { fg = zephyr.base4 },
    SpecialKey = { fg = zephyr.bg1 },
    FloatBorder = { fg = zephyr.bg_highlight },
    Pmenu = { fg = zephyr.fg, bg = zephyr.bg_popup },
    PmenuSel = { fg = zephyr.base0, bg = zephyr.blue },
    PmenuSelBold = { fg = zephyr.base0, g = zephyr.blue },
    PmenuSbar = { fg = zephyr.none, bg = zephyr.bg_popup },
    PmenuThumb = { fg = zephyr.violet, bg = zephyr.light_green },
    WildMenu = { fg = zephyr.fg, bg = zephyr.green },
    Question = { fg = zephyr.yellow },
    NormalFloat = { fg = zephyr.base8, bg = zephyr.bg_popup },
    Tabline = { fg = zephyr.base6, bg = zephyr.base2 },
    TabLineFill = { style = zephyr.none },
    TabLineSel = { fg = zephyr.fg, bg = zephyr.blue },
    StatusLine = { fg = zephyr.base8, bg = zephyr.base2, style = zephyr.none },
    StatusLineNC = { fg = zephyr.grey, bg = zephyr.base2, style = zephyr.none },
    SpellBad = { fg = zephyr.red, bg = zephyr.none, undercut = true },
    SpellCap = { fg = zephyr.blue, bg = zephyr.none, undercut = true },
    SpellLocal = { fg = zephyr.cyan, bg = zephyr.none, undercut = true },
    SpellRare = { fg = zephyr.violet, bg = zephyr.none, undercut = true },
    Visual = { fg = zephyr.black, bg = zephyr.bg_visual },
    VisualNOS = { fg = zephyr.black, bg = zephyr.bg_visual },
    QuickFixLine = { fg = zephyr.violet, bold = true },
    Debug = { fg = zephyr.orange },
    debugBreakpoint = { fg = zephyr.bg, bg = zephyr.red },

    Boolean = { fg = zephyr.orange },
    Number = { fg = zephyr.brown },
    Float = { fg = zephyr.brown },
    PreProc = { fg = zephyr.violet },
    PreCondit = { fg = zephyr.violet },
    Include = { fg = zephyr.magenta },
    Define = { fg = zephyr.violet },
    Conditional = { fg = zephyr.magenta },
    Repeat = { fg = zephyr.magenta },
    Keyword = { fg = zephyr.magenta },
    Typedef = { fg = zephyr.red },
    Exception = { fg = zephyr.red },
    Statement = { fg = zephyr.red },
    Error = { fg = zephyr.red },
    StorageClass = { fg = zephyr.orange },
    Tag = { fg = zephyr.orange },
    Label = { fg = zephyr.orange },
    Structure = { fg = zephyr.orange },
    Operator = { fg = zephyr.cyan },
    Title = { fg = zephyr.orange, bold = true },
    Special = { fg = zephyr.red },
    SpecialChar = { fg = zephyr.yellow },
    Type = { fg = zephyr.teal },
    Function = { fg = zephyr.yellow },
    String = { fg = zephyr.green },
    Character = { fg = zephyr.green },
    Constant = { fg = zephyr.yellow },
    Macro = { fg = zephyr.cyan },
    Identifier = { fg = zephyr.red },

    Comment = { fg = zephyr.base6 },
    SpecialComment = { fg = zephyr.grey },
    Todo = { fg = zephyr.violet },
    Delimiter = { fg = zephyr.fg },
    Ignore = { fg = zephyr.grey },
    Underlined = { fg = zephyr.none, underline = true },

    DashboardShortCut = { fg = zephyr.magenta },
    DashboardHeader = { fg = zephyr.orange },
    DashboardCenter = { fg = zephyr.cyan },
    DashboardFooter = { fg = zephyr.yellow, bold = true },
  }
  return syntax
end

function zephyr.load_plugin_syntax()
  local plugin_syntax = {

    ["@function"] = { fg = zephyr.blue },
    ["@method"] = { fg = zephyr.blue },
    ["@keyword.function"] = { fg = zephyr.red },
    ["@property"] = { fg = zephyr.yellow },
    ["@type"] = { fg = zephyr.orange },
    ["@variable"] = { fg = zephyr.red },
    -- ["@punctuation.bracket"] = { fg = zephyr.bracket },

    vimCommentTitle = { fg = zephyr.grey, bold = true },
    vimLet = { fg = zephyr.orange },
    vimVar = { fg = zephyr.cyan },
    vimFunction = { fg = zephyr.redwine },
    vimIsCommand = { fg = zephyr.fg },
    vimCommand = { fg = zephyr.blue },
    vimNotFunc = { fg = zephyr.violet, bold = true },
    vimUserFunc = { fg = zephyr.yellow, bold = true },
    vimFuncName = { fg = zephyr.yellow, bold = true },

    diffAdded = { fg = zephyr.dark_green },
    diffRemoved = { fg = zephyr.red },
    diffChanged = { fg = zephyr.blue },
    diffOldFile = { fg = zephyr.yellow },
    diffNewFile = { fg = zephyr.orange },
    diffFile = { fg = zephyr.aqua },
    diffLine = { fg = zephyr.grey },
    diffIndexLine = { fg = zephyr.violet },

    gitcommitSummary = { fg = zephyr.red },
    gitcommitUntracked = { fg = zephyr.grey },
    gitcommitDiscarded = { fg = zephyr.grey },
    gitcommitSelected = { fg = zephyr.grey },
    gitcommitUnmerged = { fg = zephyr.grey },
    gitcommitOnBranch = { fg = zephyr.grey },
    gitcommitArrow = { fg = zephyr.grey },
    gitcommitFile = { fg = zephyr.dark_green },

    VistaBracket = { fg = zephyr.grey },
    VistaChildrenNr = { fg = zephyr.orange },
    VistaKind = { fg = zephyr.purpl },
    VistaScope = { fg = zephyr.red },
    VistaScopeKind = { fg = zephyr.blue },
    VistaTag = { fg = zephyr.magenta, bold = true },
    VistaPrefix = { fg = zephyr.grey },
    VistaColon = { fg = zephyr.magenta },
    VistaIcon = { fg = zephyr.yellow },
    VistaLineNr = { fg = zephyr.fg },

    GitGutterAdd = { fg = zephyr.dark_green },
    GitGutterChange = { fg = zephyr.blue },
    GitGutterDelete = { fg = zephyr.red },
    GitGutterChangeDelete = { fg = zephyr.violet },

    GitSignsAdd = { fg = zephyr.dark_green },
    GitSignsChange = { fg = zephyr.blue },
    GitSignsDelete = { fg = zephyr.red },
    GitSignsAddNr = { fg = zephyr.dark_green },
    GitSignsChangeNr = { fg = zephyr.blue },
    GitSignsDeleteNr = { fg = zephyr.red },
    GitSignsAddLn = { bg = zephyr.bg_popup },
    GitSignsChangeLn = { bg = zephyr.bg_highlight },
    GitSignsDeleteLn = { bg = zephyr.bg1 },

    SignifySignAdd = { fg = zephyr.dark_green },
    SignifySignChange = { fg = zephyr.blue },
    SignifySignDelete = { fg = zephyr.red },

    dbui_tables = { fg = zephyr.blue },

    DiagnosticsSignError = { fg = zephyr.red },
    DiagnosticsSignWarning = { fg = zephyr.yellow },
    DiagnosticsSignInformation = { fg = zephyr.blue },
    DiagnosticsSignHint = { fg = zephyr.cyan },

    DiagnosticsVirtualTextError = { fg = zephyr.red },
    DiagnosticsVirtualTextWarning = { fg = zephyr.yellow },
    DiagnosticsVirtualTextInformation = { fg = zephyr.blue },
    DiagnosticsVirtualTextHint = { fg = zephyr.cyan },

    DiagnosticsUnderlineError = { undercurl = true, sp = zephyr.red },
    DiagnosticsUnderlineWarning = { undercurl = true, sp = zephyr.yellow },
    DiagnosticsUnderlineInformation = { undercurl = true, sp = zephyr.blue },
    DiagnosticsUnderlineHint = { undercurl = true, sp = zephyr.cyan },

    -- Cmp
    CmpDocumentation = { fg = zephyr.fg, bg = zephyr.black },
    CmpDocumentationBorder = { fg = zephyr.bg_highlight, bg = zephyr.black },
    CmpItemAbbr = { fg = zephyr.fg },
    CmpItemAbbrDeprecated = { fg = zephyr.grey, strikethrough = true },
    CmpItemAbbrMatch = { fg = zephyr.blue },
    CmpItemAbbrMatchFuzzy = { fg = zephyr.blue },
    CmpItemKindVariable = { fg = zephyr.teal },
    CmpItemKindText = { fg = zephyr.teal },
    CmpItemKindFunction = { fg = zephyr.magenta },
    CmpItemKindMethod = { fg = zephyr.magenta },
    CmpItemKindInterface = { fg = zephyr.teal },
    CmpItemKindKeyword = { fg = zephyr.yellow },
    CmpItemKindSnippet = { fg = zephyr.yellow },
    -- CmpItemKindDefault = { fg = c.fg_dark, bg = c.none };
    -- CmpItemMenu = { fg = zephyr.black  };
    -- CmpItemKindClass = { fg = c.orange, bg = c.none };
    -- CmpItemKindProperty = { fg = c.green1, bg = c.none };
    -- CmpItemKindField = { fg = c.green1, bg = c.none };

    CursorWord0 = { bg = zephyr.currsor_bg },
    CursorWord1 = { bg = zephyr.currsor_bg },

    NvimTreeFolderName = { fg = zephyr.blue },
    NvimTreeRootFolder = { fg = zephyr.red, bold = true },
    NvimTreeSpecialFile = { fg = zephyr.fg, bg = zephyr.none, },

    TelescopeBorder = { fg = zephyr.teal },
    TelescopePromptBorder = { fg = zephyr.blue },
    TelescopeMatching = { fg = zephyr.teal },
    TelescopeSelection = { fg = zephyr.yellow, bg = zephyr.bg_highlight, bold = true },
    TelescopeSelectionCaret = { fg = zephyr.yellow },
    TelescopeMultiSelection = { fg = zephyr.teal },
  }
  return plugin_syntax
end

local async_load_plugin

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function()
  zephyr.terminal_color()
  local syntax = zephyr.load_plugin_syntax()
  for group, colors in pairs(syntax) do
    zephyr.highlight(group, colors)
  end
  async_load_plugin:close()
end))

function zephyr.colorscheme()
  vim.api.nvim_command("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
  end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "zephyr"
  local syntax = zephyr.load_syntax()
  for group, colors in pairs(syntax) do
    zephyr.highlight(group, colors)
  end
  async_load_plugin:send()
end

zephyr.colorscheme()

return zephyr
