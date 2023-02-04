local policeGroups = {'police', 'sheriff'}
function canUseCarMegaphone()
    local vehicleClass = GetVehicleClass(cache.vehicle)
    if DoesEntityExist(cache.vehicle) and vehicleClass == 18 and player.hasGroup(policeGroups) then
        return true
    end
    return false
end