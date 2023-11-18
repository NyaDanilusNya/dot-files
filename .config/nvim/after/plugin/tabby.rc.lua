local theme = {
  fill = 'TabLineFill',
  -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
  head = 'TabLine',
  current_tab = 'TabLineSel',
  tab = 'TabLine',
  win = 'TabLine',
  tail = 'TabLine',
}
require('tabby.tabline').set(function(line)
  return {
    line.tabs().foreach(function(tab)
      local hl = tab.is_current() and theme.fill or theme.current_tab
      return {
        line.sep(' ', hl, theme.fill),
        tab.is_current() and '' or '󰆣',
        tab.number(),
        tab.name(),
        tab.close_btn(''),
        line.sep(' ', hl, theme.fill),
        hl = hl,
        margin = ' ',
      }
    end),
    line.spacer(),
    line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
      if win.buf_name():sub(1,8) == "neo-tree" or win.buf_name():sub(1,8) == "[packer]" then return end
      return {
        line.sep(' ', theme.win, theme.win),
        win.is_current() and '' or '',
        win.buf_name(),
        line.sep(' ', theme.win, theme.win),
        hl = theme.fill,
        margin = ' ',
      }
    end),
    hl = theme.current_tab,
  }
end)
