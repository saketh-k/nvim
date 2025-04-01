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
return {
  s({ trig = 'mk', snippetType = 'autosnippet' }, { t '$', i(0), t '$' }),
  s({ trig = 'dm', snippetType = 'autosnippet' }, { t '$$\n', i(0), t '\n$$' }),

  -- Greek Letters
  s({ trig = '@a', snippetType = 'autosnippet' }, { t '\\alpha' }),
  s({ trig = '@b', snippetType = 'autosnippet' }, { t '\\beta' }),
  s({ trig = '@g', snippetType = 'autosnippet' }, { t '\\gamma' }),
  s({ trig = '@G', snippetType = 'autosnippet' }, { t '\\Gamma' }),
  s({ trig = '@d', snippetType = 'autosnippet' }, { t '\\delta' }),
  s({ trig = '@D', snippetType = 'autosnippet' }, { t '\\Delta' }),
  s({ trig = '@e', snippetType = 'autosnippet' }, { t '\\epsilon' }),
  s({ trig = ':e', snippetType = 'autosnippet' }, { t '\\varepsilon' }),
  s({ trig = '@z', snippetType = 'autosnippet' }, { t '\\zeta' }),
  s({ trig = '@t', snippetType = 'autosnippet' }, { t '\\theta' }),
  s({ trig = '@T', snippetType = 'autosnippet' }, { t '\\Theta' }),
  s({ trig = ':t', snippetType = 'autosnippet' }, { t '\\vartheta' }),
  s({ trig = '@i', snippetType = 'autosnippet' }, { t '\\iota' }),
  s({ trig = '@k', snippetType = 'autosnippet' }, { t '\\kappa' }),
  s({ trig = '@l', snippetType = 'autosnippet' }, { t '\\lambda' }),
  s({ trig = '@L', snippetType = 'autosnippet' }, { t '\\Lambda' }),
  s({ trig = '@s', snippetType = 'autosnippet' }, { t '\\sigma' }),
  s({ trig = '@S', snippetType = 'autosnippet' }, { t '\\Sigma' }),
  s({ trig = '@u', snippetType = 'autosnippet' }, { t '\\upsilon' }),
  s({ trig = '@U', snippetType = 'autosnippet' }, { t '\\Upsilon' }),
  s({ trig = '@o', snippetType = 'autosnippet' }, { t '\\omega' }),
  s({ trig = '@O', snippetType = 'autosnippet' }, { t '\\Omega' }),

  -- Basic operations
  s({ trig = 'sr', snippetType = 'autosnippet' }, { t '^{2}' }),
  s({ trig = 'cb', snippetType = 'autosnippet' }, { t '^{3}' }),
  s({ trig = 'rd', snippetType = 'autosnippet' }, { t '^{', i(1), t '}' }),
  s({ trig = '_', snippetType = 'autosnippet' }, { t '_{', i(1), t '}' }),
  s({ trig = 'sq', snippetType = 'autosnippet' }, { t '\\sqrt{', i(1), t '}' }),
  s({ trig = 'ff', snippetType = 'autosnippet' }, { t '\\frac{', i(1), t '}{', i(2), t '}' }),
  s({ trig = 'ee', snippetType = 'autosnippet' }, { t 'e^{', i(1), t '}' }),
  s({ trig = 'invs', snippetType = 'autosnippet' }, { t '^{-1}' }),
  s({ trig = 'trans', snippetType = 'autosnippet' }, { t '^{\\intercal}' }),

  -- Symbols
  s({ trig = 'ooo', snippetType = 'autosnippet' }, { t '\\infty' }),
  s({ trig = 'sum', snippetType = 'autosnippet' }, { t '\\sum' }),
  s({ trig = 'prod', snippetType = 'autosnippet' }, { t '\\prod' }),
  s({ trig = 'lim', snippetType = 'autosnippet' }, { t '\\lim_{', i(1, 'n'), t ' \\to ', i(2, '\\infty'), t '}' }),
  s({ trig = '+-', snippetType = 'autosnippet' }, { t '\\pm' }),
  s({ trig = '-+', snippetType = 'autosnippet' }, { t '\\mp' }),
  s({ trig = 'nabl', snippetType = 'autosnippet' }, { t '\\nabla' }),
  s({ trig = 'xx', snippetType = 'autosnippet' }, { t '\\times' }),
  s({ trig = '**', snippetType = 'autosnippet' }, { t '\\cdot' }),
  s({ trig = 'para', snippetType = 'autosnippet' }, { t '\\parallel' }),
  s({ trig = '==', snippetType = 'autosnippet' }, { t '\\equiv' }),
  s({ trig = '!=', snippetType = 'autosnippet' }, { t '\\neq' }),
  s({ trig = '>=', snippetType = 'autosnippet' }, { t '\\geq' }),
  s({ trig = '<=', snippetType = 'autosnippet' }, { t '\\leq' }),
  s({ trig = '>>', snippetType = 'autosnippet' }, { t '\\gg' }),
  s({ trig = '<<', snippetType = 'autosnippet' }, { t '\\ll' }),
  s({ trig = 'prop', snippetType = 'autosnippet' }, { t '\\propto' }),
  s({ trig = '->', snippetType = 'autosnippet' }, { t '\\to' }),
  s({ trig = '=>', snippetType = 'autosnippet' }, { t '\\implies' }),
  s({ trig = '=><', snippetType = 'autosnippet' }, { t '\\impliedby' }),

  -- Sets and logic
  s({ trig = 'inn', snippetType = 'autosnippet' }, { t '\\in' }),
  s({ trig = 'notin', snippetType = 'autosnippet' }, { t '\\not\\in' }),
  s({ trig = 'eset', snippetType = 'autosnippet' }, { t '\\emptyset' }),
  s({ trig = 'set', snippetType = 'autosnippet' }, { t '\\{', i(1), t '\\}' }),

  -- Special letters
  s({ trig = 'RR', snippetType = 'autosnippet' }, { t '\\mathbb{R}' }),
  s({ trig = 'ZZ', snippetType = 'autosnippet' }, { t '\\mathbb{Z}' }),
  s({ trig = 'NN', snippetType = 'autosnippet' }, { t '\\mathbb{N}' }),

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
