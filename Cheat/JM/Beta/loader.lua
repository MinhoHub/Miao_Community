if getfenv(2).script_key then
    getgenv().script_key = getfenv(2).script_key
end

setthreadidentity = setthreadidentity or function() end

if getgenv().UC_LOADED then
    return
end

getgenv().UC_LOADED = true

if identifyexecutor() == "Wave" then
    getgenv().gethui = function()
        return game:GetService("CoreGui")
    end
end

if game.GameId == 6035872082 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/55e99c63619cdf47c9fcfb364b40dc1c.lua"))()
end
