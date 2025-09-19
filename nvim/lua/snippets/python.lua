local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt  -- fmt for formated snippets

return {
  -- Funktion
  s("def", fmt("def {}():\n    {}", {
    i(1, "function_name"),
    i(0)
  })),

  -- Klasse
  s("class", fmt("class {}:\n    def __init__(self):\n        {}", {
    i(1, "ClassName"),
    i(0)
  })),

  -- for x in ...
  s("for x", fmt("for {} in {}:\n    {}", {
    i(1, "x"),
    i(2),
    i(0)
  })),

  -- for i in range(len(...)):
  s("for i", fmt("for {} in range(len({})):\n    {}", {
    i(1, "i"),
    i(2),
    i(0)
  })),
}

