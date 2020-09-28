--===============================================--===============================================
--= stationary radars based on 	https://github.com/DreanorGTA5Mods/StationaryRadar	 edited by id7z        =
--===============================================--===============================================

local radares = { -- in city
{x = 255.77700805664, y = -1044.5496826172, z = 29.344024658203},
{x = 217.2476348877, y = -1075.9079589844, z = 29.34158706665},
{x = 194.74475097656, y = -1036.3382568359, z = 29.366374969482},
{x = 225.32481384277, y = -1014.0585327148, z = 29.313674926758},
{x = -3.2973744869232, y = -953.95233154297, z = 29.406606674194},
{x = 399.70111083984, y = -972.0849609375, z = 29.36661529541},
{x = 420.86157226563, y = -546.16546630859, z = 28.739128112793},
{x = 407.86260986328, y = -1054.314453125, z = 29.216213226318},
{x = 407.64047241211, y = -1042.8663330078, z = 29.279630661011},
}

local radares2 = { -- ouf of city
{x = 1402.2290039063, y = 683.65899658203, z = 79.118171691895},
{x = 1937.166015625, y = 2462.3566894531, z = 54.586368560791},
{x = 2659.294921875, y = 3129.5539550781, z = 50.388061523438},
{x = 2879.9760742188, y = 4188.8784179688, z = 50.151626586914},
{x = 1743.0506591797, y = 6373.29296875, z = 35.727691650391},
{x = 767.15783691406, y = 6496.0439453125, z = 25.353401184082},
{x = 2597.5502929688, y = 5148.818359375, z = 44.790538787842},
{x = 2675.63061523443, y = 3195.4846191406, z = 53.058483123779},
{x = 2253.3679199219, y = 3008.90234375, z = 45.335361480713},
{x = 2005.4567871094, y = 2599.7690429688, z = 54.2887840271},
}

Citizen.CreateThread(function()
  while true do
    Wait(0)
	for k,v in pairs(radares) do
	pP = GetPlayerPed(-1)
	local coords = GetEntityCoords(pP, true)
	if Vdist2(v.x, v.y, v.z, coords["x"], coords["y"], coords["z"]) < 10 then
		checkSpeed()
	end
  end
 end
end)


Citizen.CreateThread(function()
  while true do
    Wait(0)
	for k,v in pairs(radares2) do
	pP = GetPlayerPed(-1)
	local coords = GetEntityCoords(pP, true)
	if Vdist2(v.x, v.y, v.z, coords["x"], coords["y"], coords["z"]) < 10 then
		checkSpeed2()
	end
  end
 end
end)

  function checkSpeed2()
  local speed = GetEntitySpeed(pP)
  local vehicle = GetVehiclePedIsIn(pP, false)
  local driver = GetPedInVehicleSeat(vehicle, -1)
  local maxspeed = 180
	local kmhspeed = math.ceil(speed*3.6)
		if kmhspeed > maxspeed and driver == pP then
			Citizen.Wait(250)
			TriggerServerEvent('cobrarMulta2')
		    TriggerServerEvent('d7z_speedcamera:openGUI')
	        Citizen.Wait(200)
		    TriggerServerEvent('d7z_speedcamera:closeGUI')
			exports.pNotify:SetQueueMax("left", 1)
            exports.pNotify:SendNotification({
            text = "<h1>        📷 نظام ساهر 📷   <h3> تم تحرير مخالفة سرعة <br/>قيمة الغرامة: 1000 ريال<br/>حد السرعة: 180 كيلو للساعة<br/> سرعتك كانت: " ..kmhspeed .. " كيلو للساعة <br/>",
            queue = "lmao",
            type = "info",
            timeout = 15000,
            layout = "centerRight"
				})
	end
end

  function checkSpeed()
  local speed = GetEntitySpeed(pP)
  local vehicle = GetVehiclePedIsIn(pP, false)
  local driver = GetPedInVehicleSeat(vehicle, -1)
  local maxspeed = 80
	local kmhspeed = math.ceil(speed*3.6)
		if kmhspeed > maxspeed and driver == pP then
			Citizen.Wait(250)
			TriggerServerEvent('cobrarMulta')
		    TriggerServerEvent('d7z_speedcamera:openGUI')
	        Citizen.Wait(200)
		    TriggerServerEvent('d7z_speedcamera:closeGUI')
			exports.pNotify:SetQueueMax("left", 1)
            exports.pNotify:SendNotification({
            text = "<h1>        📷 نظام ساهر 📷   <h3> تم تحرير مخالفة سرعة <br/>قيمة الغرامة: 500 ريال<br/>حد السرعة: 80 كيلو للساعة<br/> سرعتك كانت: " ..kmhspeed .. " كيلو للساعة <br/>",
            queue = "lmao",
            type = "info",
            timeout = 15000,
            layout = "centerRight"
          })
	end
end

local blips = {
--    {id=184, x=379.68807983398, y=-1048.3527832031, z=29.250692367554, colour=5,},
--    {id=184, x=153.31282043457, y=-1027.3864746094, z=29.334127426147, colour=5},
--    {id=184, x=851.52355957031, y=-1005.5764160156, z=28.878499984741, colour=5},
--    {id=184, x=-231.27081298828, y=-981.63861083984, z=29.274829864502, colour=5},
	--{id=161, x=-244.09553527832, y=-689.64270019531, z=33.37202835083, colour=1},
	--{id=161, x=-257.42169189453, y=-973.50274658203, z=31.220006942749, colour=1},
	--{id=161, x=415.71151733398, y=-981.54705810547, z=29.442260742188, colour=1},
	--{id=161, x=190.78237915039, y=-948.57574462891, z=30.091911315918, colour=1},
	--{id=161, x=363.70681762695, y=-592.30187988281, z=28.679723739624, colour=1},
	--{id=161, x=710.09307861328, y=-1088.9372558594, z=22.425308227539, colour=1},
	--{id=161, x=-371.18273925781, y=-132.23565673828, z=38.68533706665, colour=1,},
    ...
}

-- And later --

for _, item in pairs(blips) do
    item.blip = AddBlipForCoord(item.x, item.y, item.z)
    SetBlipSprite(item.blip, item.id)
    SetBlipColour(item.blip, item.colour)
end

RegisterNetEvent('d7z_speedcamera:openGUI')
AddEventHandler('d7z_speedcamera:openGUI', function()
    SetNuiFocus(false,false)
    SendNUIMessage({type = 'openSpeedcamera'})
end)   

RegisterNetEvent('d7z_speedcamera:closeGUI')
AddEventHandler('d7z_speedcamera:closeGUI', function()
    SendNUIMessage({type = 'closeSpeedcamera'})
end)