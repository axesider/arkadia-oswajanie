zryby.updateCheck = zryby.updateCheck or {
    plugin_name = "arkadia-oswajanie",
    repo = "axesider",
    storeKey = "Oswajanie"
}

function zryby.updateCheck:getFile()
    return getMudletHomeDir() .. "/plugins/" .. self.plugin_name .. "/commits"
end

function zryby.updateCheck:checkNewVersion()
    local url = "https://api.github.com/repos/" .. self.repo .. "/" .. self.plugin_name .. "/commits"
    local filename = self:getFile()
    downloadFile(filename, url)
    registerAnonymousEventHandler("sysDownloadDone", function(_, file)
        self:handle(file)
    end, true)
    coroutine.yield(self.coroutine)
end

function zryby.updateCheck:handle(fileName)
    if fileName ~= self:getFile() then
        return
    end

    local file, s, contents = io.open(fileName)
    if file then
        contents = yajl.to_value(file:read("*a"))
        io.close(file)
        os.remove(self:getFile())
        local sha = contents[1].sha
        local State = scripts.state_store:get(self.storeKey) or {}
        if State.sha ~= nil and sha ~= State.sha then
            echo("\n")
            cecho("<CadetBlue>(skrypty)<tomato>: Plugin "..self.plugin_name .." posiada nowa aktualizacje. Kliknij ")
            cechoLink("<green>tutaj", [[zryby.updateCheck:update()]], "Aktualizuj", true)
            cecho(" <tomato>aby pobrac")
            echo("\n")
        end
        self.update_sha = sha
    end
end

function zryby.updateCheck:update()
    scripts.plugins_installer:install_from_url("https://codeload.github.com/" .. self.repo .. "/" .. self.plugin_name .. "/zip/master")
    local State = scripts.state_store:get(self.storeKey) or {}
    State.sha = self.update_sha
    scripts.state_store:set(self.storeKey, State)
end

zryby.updateCheck.coroutine = coroutine.create(function()
    zryby.updateCheck:checkNewVersion()
end)

tempTimer(4.15, function() coroutine.resume(zryby.updateCheck.coroutine) end)
