local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_stationaryRadars")

RegisterServerEvent('cobrarMulta') -- داخل المدينة
AddEventHandler('cobrarMulta', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local multa = 500 -- سعر مخالفة داخل المدينة عدلها من هنا
	if vRP.hasPermission({user_id,"emservice.camera"}) then
        vRPclient.notify(player,{"You are a policeman. No ticket for you!"})    		
	else
	vRP.tryFullPayment({user_id,multa})
	TriggerClientEvent("pNotify:SendNotification",player,{
					text = "لديك رسالة",
					type = "warning",
					timeout = (7000),
					layout = "centerRight",
					queue = "global",
				})
end
end)

RegisterServerEvent('cobrarMulta2') -- برا المدينة
AddEventHandler('cobrarMulta2', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local multa = 1000 -- سعر المخالفة برا المدينة عدلها من هنا
	if vRP.hasPermission({user_id,"emservice.camera"}) then
        vRPclient.notify(player,{"You are a policeman. No ticket for you!"})    		
	else
	vRP.tryFullPayment({user_id,multa})
	TriggerClientEvent("pNotify:SendNotification",player,{
					text = "لديك رسالة",
					type = "warning",
					timeout = (7000),
					layout = "centerRight",
					queue = "global",
				})
end
end)
------------- لاتعدل شي تحت ------------------------
-- تاثير الفلاش (START)

RegisterServerEvent('d7z_speedcamera:openGUI')
AddEventHandler('d7z_speedcamera:openGUI', function()
	TriggerClientEvent('d7z_speedcamera:openGUI', source)
end)

RegisterServerEvent('d7z_speedcamera:closeGUI')
AddEventHandler('d7z_speedcamera:closeGUI', function()
	TriggerClientEvent('d7z_speedcamera:closeGUI', source)
end)

-- تاثير الفلاش (END)