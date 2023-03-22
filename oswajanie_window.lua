oswajanie.window = oswajanie.window or {
    windowName = "oswajanie",
    font_size = 10,
}

function oswajanie.window:configWindow()
    self.window = scripts.ui.window:new(self.windowName, "Oswajanie", true)
    self.window:set_font_size(self.font_size)
end

function oswajanie.window:init()
    self:configWindow()
    self:print()
end

function oswajanie.window:print()
    clearWindow(self.windowName)
    oswajanie.print_compact_activeanimal(self.windowName)
    cechoLink(self.windowName, "<light_blue>Odswiez\n", function() oswajanie.window:print() end, "odswiez okno")
end

oswajanie.window:init()