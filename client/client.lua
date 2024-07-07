-- local QBCore = exports["qb-core"]:GetCoreObject() -- not necessary - this is a qbcore tunnel 

-- creation the blip marke
CreateThread(function() 
    while true do
        sleep = 1000
        local ped = PlayerPedId()
        local playerPos = GetEntityCoords(ped)
        local makerPos = vector3(1289.42, -1728.96, 53.34)

        local distance  = #(playerPos - makerPos)

        if distance < 2 then
            sleep = 0
            DrawMarker(20, makerPos.x, makerPos.y, makerPos.z, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 0.2, 255, 255, 255, 200, false, true, 2, true, false, false, false)

            if IsControlJustPressed(0,38) then
                SendNUIMessage({
                    type = 'open'
                })
                SetNuiFocus(true,true)
            end
        end
        Wait(sleep)
        
    end

end)

RegisterNUICallback('fecharTela', function ()
    SetNuiFocus(false,false)
end)