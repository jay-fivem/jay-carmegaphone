local useSubmix = false

RegisterCommand("+carMegaphone", function()
    if canUseCarMegaphone() then
        if useSubmix then
            TriggerServerEvent("jay-audio:server:addSubmix")
        end
        exports["pma-voice"]:overrideProximityRange(50.0, true)
    end
end)
RegisterCommand("-carMegaphone", function()
    if canUseCarMegaphone() then
        if useSubmix then
            TriggerServerEvent("jay-audio:server:removeSubmix")
        end
        exports["pma-voice"]:clearProximityOverride()
    end
end)
RegisterKeyMapping('+carMegaphone', 'Car Megaphone', 'keyboard', '')
