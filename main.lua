RegisterCommand("+carMegaphone", function()
    if canUseCarMegaphone() then
        exports["pma-voice"]:overrideProximityRange(50.0, true)
    end
end)
RegisterCommand("-carMegaphone", function()
    if canUseCarMegaphone() then
        exports["pma-voice"]:clearProximityOverride()
    end
end)
RegisterKeyMapping('+carMegaphone', 'Car Megaphone', 'keyboard', '')