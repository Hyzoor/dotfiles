require('lint').linters_by_ft = {
  lua = {'luac'},           -- lua
  sh = {'bash'},            -- bash
  c = {'cppcheck'},         -- C
  cpp = {'cppcheck'},       -- C++
  typescript = {'eslint'},  -- TS
  tsx = {'eslint'},         -- TSX
  css = {'stylelint'},      -- CSS
  html = {'htmlhint'},      -- HTML
}
