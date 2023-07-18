local db = require("dashboard")
local stats = require("lazy").stats()
local ms = (math.floor(stats.startuptime *100 + 0.5) /100 )
db.setup({
  theme = "doom",
  config = {
    header = {
    '                                   ',
    '                                   ',
    '                                   ',
    '          ▀████▀▄▄              ▄█ ',
    '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
    '    ▄        █          ▀▀▀▀▄  ▄▀  ',
    '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
    '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
    '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
    '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
    '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
    '   █   █  █      ▄▄           ▄▀   ',
    '                                   ',
    '                                   ',
    '                                   ',
    '                                   ',
    '                                   ',
    '                                   ',
    },
    center = {
      {
        icon = '    ',
        icon_hl = 'Title',
        desc = 'New File             ',
        desc_hl = 'String',
        key = 'a',
        keymap = 'SPC f n',
        key_hl = 'Number',
        action = 'lua print(1)'
      },
      {
        icon = '    ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'b',
        keymap = 'SPC f f',
        key_hl = 'Number',
        action = 'lua print(2)'
      },
      {
        icon = "    ",
        icon_hl = 'Title',
        desc = "File Explorer",
        desc_hl = "String",
        key = 'c',
        keymap = 'SPC e',
        key_hl = 'Number',
        action = 'lua print(3)'
      },
      {
        icon = "󰒲    ",
        icon_hl = 'Title',
        desc = "Lazy",
        desc_hl = "String",
        key = 'd',
        keymap = 'SPC l',
        key_hl = 'Number',
        action = 'lua print(4)'
      },
      {
        icon = "    ",
        icon_hl = 'Title',
        desc = "Recent Files",
        desc_hl = "String",
        key = 'e',
        keymap = 'SPC fo',
        key_hl = 'Number',
        action = 'lua print(5)'
      },
      {
        icon = "    ",
        icon_hl = "Title",
        desc = "Find word",
        desc_hl = "String",
        key = 'f',
        keymap = "SPC fw",
        key_hl = 'Number',
        action = 'lua print(6)'
      }
    },
    footer = { "Neovim loaded "  .. stats.count .. " plugins in " ..ms.. " ms" },
  }
})
