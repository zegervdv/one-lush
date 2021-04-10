--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--
-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial
--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--
-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`
local lush = require('lush')
local hsl = lush.hsl

local background = hsl('#282c34')
local foreground = hsl('#abb2bf')

local red = hsl('#e06c75')
local green = hsl('#98c379')
local yellow = hsl('#e5c07b')
local orange = hsl('#d19a66')
local blue = hsl('#61afef')
local purple = hsl('#c678dd')
local cyan = hsl('#56b6c2')

local error_red = red.saturate(200)
local warning_yellow = yellow.saturate(200)
local info_blue = blue.saturate(200)
local hint_green = green.saturate(100)

local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Comment { fg = foreground.darken(25), gui = 'italic' }, -- any comment
    ColorColumn { bg = background.lighten(5) }, -- used for the columns set with 'colorcolumn'
    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine { bg = background.lighten(10) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory { fg = cyan }, -- directory names (and other special names in listings)
    DiffAdd { fg = green }, -- diff mode: Added line |diff.txt|
    DiffChange { fg = yellow, gui = 'underline' }, -- diff mode: Changed line |diff.txt|
    DiffDelete { fg = red }, -- diff mode: Deleted line |diff.txt|
    DiffText { fg = orange }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer { fg = foreground.darken(60) }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg { fg = red.saturate(200) }, -- error messages on the command line
    VertSplit { fg = foreground.darken(50), bg = background }, -- the column separating vertically split windows
    Folded { fg = cyan.desaturate(60), bg = background.lighten(3) }, -- line used for closed folds
    FoldColumn { Folded }, -- 'foldcolumn'
    SignColumn {}, -- column where |signs| are displayed
    IncSearch { fg = yellow.saturate(80), bg = background.lighten(25) }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute { fg = background, bg = yellow.saturate(150) }, -- |:substitute| replacement text highlighting
    LineNr { fg = foreground.darken(40) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = yellow.saturate(15) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen { fg = blue.saturate(25), gui = 'underline' }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg { fg = green }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea { fg = foreground }, -- Area for messages and cmdline
    MsgSeparator { fg = background, bg = foreground }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg { fg = green.saturate(20) }, -- |more-prompt|
    NonText { fg = foreground.saturate(10) }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal { fg = foreground, bg = background }, -- normal text
    NormalFloat { fg = foreground, bg = background.darken(10) }, -- Normal text in floating windows.
    NormalNC { fg = foreground.darken(10) }, -- normal text in non-current windows
    Pmenu { fg = foreground, bg = hsl('#333841') }, -- Popup menu: normal item.
    PmenuSel { fg = foreground.lighten(75), bg = blue }, -- Popup menu: selected item.
    PmenuSbar {}, -- Popup menu: scrollbar.
    PmenuThumb { fg = background, bg = foreground }, -- Popup menu: Thumb of the scrollbar.
    Question { fg = green.saturate(20) }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { fg = background, bg = yellow.saturate(150) }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search { fg = background, bg = yellow.saturate(150) }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey { fg = cyan.saturate(35) }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine { bg = background }, -- status line of current window
    StatusLineNC { bg = background }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine { fg = foreground, bg = background.lighten(10) }, -- tab pages line, not active tab page label
    TabLineFill { bg = background.lighten(10) }, -- tab pages line, where there are no labels
    TabLineSel { fg = background, bg = blue }, -- tab pages line, active tab page label
    Title { fg = purple.saturate(40) }, -- titles for output from ":set all", ":autocmd" etc.
    Visual { fg = blue.saturate(45), bg = background.lighten(15) }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg { fg = yellow.saturate(75) }, -- warning messages
    Whitespace { fg = foreground.lighten(15) }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu { fg = foreground.lighten(75), bg = blue }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant { fg = yellow.saturate(75) }, -- (preferred) any constant
    String { fg = green }, --   a string constant: "this is a string"
    Character { fg = green }, --  a character constant: 'c', '\n'
    Number { fg = orange }, --   a number constant: 234, 0xff
    Boolean { fg = blue }, --  a boolean constant: TRUE, false
    Float { fg = orange }, --    a floating point constant: 2.3e10

    Identifier { fg = blue }, -- (preferred) any variable name
    Function { fg = yellow }, -- function name (also: methods for classes)

    Statement { fg = purple }, -- (preferred) any statement
    Conditional { fg = purple }, --  if, then, else, endif, switch, etc.
    Repeat { fg = purple }, --   for, do, while, etc.
    Label { fg = blue }, --    case, default, etc.
    Operator { fg = purple }, -- "sizeof", "+", "*", etc.
    Keyword { fg = blue }, --  any other keyword
    Exception { fg = purple }, --  try, catch, throw

    PreProc { fg = yellow }, -- (preferred) generic Preprocessor
    Include { fg = purple }, --  preprocessor #include
    Define { fg = purple }, --   preprocessor #define
    Macro { fg = purple }, --    same as Define
    PreCondit { fg = blue }, --  preprocessor #if, #else, #endif, etc.

    Type { fg = blue }, -- (preferred) int, long, char, etc.
    StorageClass { fg = blue }, -- static, register, volatile, etc.
    Structure { fg = yellow }, --  struct, union, enum, etc.
    Typedef { fg = yellow }, --  A typedef

    Special { fg = blue }, -- (preferred) any special symbol
    SpecialChar { fg = blue }, --  special character in a constant
    Tag { fg = blue }, --    you can use CTRL-] on this
    Delimiter { fg = blue }, --  character that needs attention
    SpecialComment { fg = green }, -- special things inside a comment
    Debug { fg = blue }, --    debugging statements

    Underlined { gui = 'underline' }, -- (preferred) text that stands out, HTML links
    Bold { gui = 'bold' },
    Italic { gui = 'italic' },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error { fg = background, bg = red }, -- (preferred) any erroneous construct

    Todo { fg = background, bg = blue }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError { fg = error_red }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning { fg = warning_yellow }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation { fg = info_blue }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint { fg = hint_green }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError { fg = error_red, bg = background }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning { fg = warning_yellow, bg = background }, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation { fg = info_blue, bg = background }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint { fg = hint_green, bg = background }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

    -- Diff highlighting for gitcommit msg
    diffAdded { fg = green },
    diffRemoved { fg = red },
    diffFileId { fg = blue, gui = 'underline' },
    diffFile { fg = cyan },
    diffNewFile { fg = green },
    diffOldFile { fg = red },

    -- Ident blankline
    IndentBlanklineChar { fg = foreground.darken(60) },

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
