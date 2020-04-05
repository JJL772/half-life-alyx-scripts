-- Sets your playermodel to the tunnel vort (the retarded guy)
-- Change it to whatever you want, but the model MUST be precached 
if player_spawn_ev ~= nil then
    StopListeningToGameEvent(player_spawn_ev)
end

player_spawn_ev = ListenToGameEvent('player_spawn', function(info)
   if not IsServer() then return end  
   PlayerInstanceFromIndex(info["userid"]):SetModel("models/creatures/vortigaunt/vortigaunt_tunnels.vmdl")
 end, nil)
