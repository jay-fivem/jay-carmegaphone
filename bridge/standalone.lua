function canUseCarMegaphone()
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped) then
        local vehicle = GetVehiclePedIsIn(ped)
        local vehicleClass = GetVehicleClass(vehicle)
        if DoesEntityExist(vehicle) and vehicleClass == 18 then
            return true
        end
    end
    return false
end
