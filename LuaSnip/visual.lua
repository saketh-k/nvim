local ls = require 'luasnip'
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta
local rep = require('luasnip.extras').rep
-- function for visual functions
return {
  s({ trig = 'mk', snippetType = 'autosnippet' }, { t '$', i(0), t '$' }),

  -- Equation/Environment
  s(
    { trig = 'eq' },
    fmt(
      [[
    \begin{equation}
      <>
    \end{equation}
    ]],
      { i(1) },
      { delimiters = '<>' }
    )
  ),
  s(
    { trig = 'beg' },
    fmt(
      [[
    \begin{<>}
      <>
    \end{<>}
    ]],
      { i(1), i(2), rep(1) },
      { delimiters = '<>' }
    )
  ),
}
