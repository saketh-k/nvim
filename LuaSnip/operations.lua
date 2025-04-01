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
--

local get_visual = function(args, parent)
  if #parent.snippet.env.LS_SELECT_RAW > 0 then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else
    return sn(nil, i(1))
  end
end

return {
  s(
    { trig = 'und', dscr = 'Expands into underline' },
    fmta('\\underline{<>}', {
      d(1, get_visual),
    })
  ),

  -- Derivatives
  --
  s({ trig = 'par', dscr = 'partial derivative' }, fmta('\\frac{\\partial <>}{\\partial <>}', { i(1, 'f'), i(2, 'x') })),

  -- Integrals
  --

  -- Misc.
}
