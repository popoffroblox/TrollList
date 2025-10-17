local url = game:HttpGet('https://github.com/popoffroblox/TrollList/raw/refs/heads/main/list.json')
local httpService = game:GetService('HttpService')
local decoded = httpService:JSONDecode(url)

for user, message in pairs(decoded) do
    if game.Players.LocalPlayer.Name == tostring(user) then
        game.TextChatService.TextChannels.RBXGeneral:SendAsync(tostring(message))
    end
end
