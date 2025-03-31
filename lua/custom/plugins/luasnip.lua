local ls = require 'luasnip'
-- maybe add source... keybinds.lua or something

-- ls
ls.snippets = {
  lua = {
    ls.parser.parse_snippet('lf', 'local $1 = function($2)\n  $0\nend'),
  },
}

return {}
