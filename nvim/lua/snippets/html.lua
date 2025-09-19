local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- ! → Grundstruktur
  s("!", {
    t({
      "<!DOCTYPE html>",
      "<html lang=\"en\">",
      "<head>",
      "\t<meta charset=\"UTF-8\">",
      "\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">",
      "\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">",
      "\t<title>",
    }),
    i(1, "Document"),
    t({
      "</title>",
      "</head>",
      "<body>",
      "\t",
    }),
    i(0),
    t({
      "",
      "</body>",
      "</html>",
    }),
  }),

  -- h1 bis h5
  s("h1", { t("<h1>"), i(1, "Text"), t("</h1>") }),
  s("h2", { t("<h2>"), i(1, "Text"), t("</h2>") }),
  s("h3", { t("<h3>"), i(1, "Text"), t("</h3>") }),
  s("h4", { t("<h4>"), i(1, "Text"), t("</h4>") }),
  s("h5", { t("<h5>"), i(1, "Text"), t("</h5>") }),

  -- p
  s("p", { t("<p>"), i(1, "Text"), t("</p>") }),

  -- table
  s("table", {
    t({
      "<table>",
      "\t<tr>",
      "\t\t<th>",
    }),
    i(1, "Header"),
    t({
      "</th>",
      "\t</tr>",
      "\t<tr>",
      "\t\t<td>",
    }),
    i(2, "Data"),
    t({
      "</td>",
      "\t</tr>",
      "</table>",
    }),
  }),

  -- th
  s("th", { t("<th>"), i(1, "Header"), t("</th>") }),

  -- tr
  s("tr", {
    t("<tr>"),
    i(1),
    t("</tr>"),
  }),

  -- li
  s("li", { t("<li>"), i(1, "Item"), t("</li>") }),

  -- ul
  s("ul", {
    t({
      "<ul>",
      "\t",
    }),
    i(1, "<li>Item</li>"),
    t({
      "",
      "</ul>",
    }),
  }),

  -- input
  s("input", {
    t('<input type="'),
    i(1, "text"),
    t('">'),
  }),

  -- header
  s("header", {
    t("<header>"),
    i(1),
    t("</header>"),
  }),

  -- div
  s("div", {
    t("<div>"),
    i(1),
    t("</div>"),
  }),

  -- span
  s("span", {
    t("<span>"),
    i(1),
    t("</span>"),
  }),

  -- button
  s("button", {
    t("<button>"),
    i(1, "Click"),
    t("</button>"),
  }),
}

