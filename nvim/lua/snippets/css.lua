local ls  = require("luasnip")
local s   = ls.snippet
local t   = ls.text_node
local i   = ls.insert_node

return {
  -- @media
  s("med", {
    t("@media (max-width: "), i(1, "768px"), t({") {", "  "}),
    i(0),
    t({"", "}"})
  }),

  -- Flexbox
  s("flex", {
    t({
      "display: flex;",
      "justify-content: "
    }), i(1, "center"), t({";",
      "align-items: "
    }), i(2, "center"), t(";")
  }),

  -- Grid
  s("grid", {
    t({
      "display: grid;",
      "grid-template-columns: "
    }), i(1, "repeat(3, 1fr)"), t({";",
      "grid-gap: "
    }), i(2, "10px"), t(";")
  }),

  -- @keyframes 0% to 100%
  s("kf", {
    t("@keyframes "), i(1, "animationName"), t({" {",
      "  0% { "
    }), i(2), t({" }",
      "  100% { "
    }), i(3), t({" }",
      "}"
    })
  }),

  -- @keyframes half (0%, 50%, 100%)
  s("kfh", {
    t("@keyframes "), i(1, "animationName"), t({" {",
      "  0% { "
    }), i(2), t({" }",
      "  50% { "
    }), i(3), t({" }",
      "  100% { "
    }), i(4), t({" }",
      "}"
    })
  }),

  -- @keyframes quarter (0%, 25%, 50%, 75%, 100%)
  s("kfv", {
    t("@keyframes "), i(1, "animationName"), t({" {",
      "  0% { "
    }), i(2), t({" }",
      "  25% { "
    }), i(3), t({" }",
      "  50% { "
    }), i(4), t({" }",
      "  75% { "
    }), i(5), t({" }",
      "  100% { "
    }), i(6), t({" }",
      "}"
    })
  }),

  -- shortcuts
  s("mar",   { t("margin: "),              i(1), t(";") }),
  s("marl",  { t("margin-left: "),         i(1), t(";") }),
  s("marr",  { t("margin-right: "),        i(1), t(";") }),
  s("mart",  { t("margin-top: "),          i(1), t(";") }),
  s("marb",  { t("margin-bottom: "),       i(1), t(";") }),

  s("pad",   { t("padding: "),             i(1), t(";") }),
  s("padl",  { t("padding-left: "),        i(1), t(";") }),
  s("padr",  { t("padding-right: "),       i(1), t(";") }),
  s("padt",  { t("padding-top: "),         i(1), t(";") }),
  s("padb",  { t("padding-bottom: "),      i(1), t(";") }),

  s("col",   { t("color: "),               i(1), t(";") }),
  s("bg",    { t("background: "),          i(1), t(";") }),
  s("bgs",   { t("background-size: "),     i(1, "cover"), t(";") }),
  s("bgr",   { t("background-repeat: "),   i(1, "no-repeat"), t(";") }),
  s("bgp",   { t("background-position: "), i(1, "center"), t(";") }),

  s("fs",    { t("font-size: "),           i(1, "16px"), t(";") }),
  s("ff",    { t("font-family: "),         i(1, "Arial, sans-serif"), t(";") }),
  s("fw",    { t("font-weight: "),         i(1, "bold"), t(";") }),

  s("d",     { t("display: "),             i(1, "flex"), t(";") }),
  s("pos",   { t("position: "),            i(1, "relative"), t(";") }),
  s("top",   { t("top: "),                 i(1, "0"), t(";") }),
  s("bot",   { t("bottom: "),              i(1, "0"), t(";") }),
  s("left",  { t("left: "),                i(1, "0"), t(";") }),
  s("right", { t("right: "),               i(1, "0"), t(";") }),

  s("anim",  { t("animation: "),           i(1, "name 1s ease"), t(";") }),
  s("trans", { t("transition: "),          i(1, "all 0.3s ease"), t(";") }),
}

