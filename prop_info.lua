local function Initialize()
    -- Register NUI callback
    RegisterNUICallback('copyToClipboard', function(data, cb)
        cb('ok')
    end)

    exports.ox_target:addGlobalObject({
        {
            name = 'check_prop_info',
            icon = 'fas fa-info',
            label = 'Prop Info',
            onSelect = function(data)
                local entity = data.entity
                if DoesEntityExist(entity) then
                    local model = GetEntityModel(entity)
                    local modelName = GetEntityArchetypeName(entity)
                    local coords = GetEntityCoords(entity)
                    local heading = GetEntityHeading(entity)
                    
                    local vec3 = string.format('vector3(%.3f, %.3f, %.3f)', coords.x, coords.y, coords.z-1.0)
                    local vec4 = string.format('vector4(%.3f, %.3f, %.3f, %.3f)', coords.x, coords.y, coords.z-1.0, heading)
                    
                    print('-------- PROP INFO --------')
                    print('Model Name:', modelName)
                    print('Model Hash:', model)
                    print('Vec3:', vec3)
                    print('Vec4:', vec4)
                    print('------------------------------')
                    
                end
            end
        }
    })

    -- Add vehicle position target
    exports.ox_target:addGlobalVehicle({
        {
            name = 'check_vehicle_info',
            icon = 'fas fa-car',
            label = 'Vehicle Info',
            onSelect = function(data)
                local vehicle = data.entity
                if DoesEntityExist(vehicle) then
                    local coords = GetEntityCoords(vehicle)
                    local heading = GetEntityHeading(vehicle)
                    local model = GetEntityModel(vehicle)
                    local modelName = GetDisplayNameFromVehicleModel(model)
                    
                    local vec3 = string.format('vector3(%.3f, %.3f, %.3f)', coords.x, coords.y, coords.z-1.0)
                    local vec4 = string.format('vector4(%.3f, %.3f, %.3f, %.3f)', coords.x, coords.y, coords.z-1.0, heading)
                    
                    print('-------- VEHICLE INFO --------')
                    print('Model Name:', modelName)
                    print('Model Hash:', model)
                    print('Vec3:', vec3)
                    print('Vec4:', vec4)
                    print('------------------------------')
                    
                    -- Copy to clipboard
                    SendNUIMessage({
                        type = 'copyToClipboard',
                        text = vec3
                    })
                end
            end
        }
    })

    -- Add ped position target
    exports.ox_target:addGlobalOption({
        {
            name = 'check_ped_position',
            icon = 'fas fa-user',
            label = 'Copy Vector3',
            onSelect = function(data)
                local ped = PlayerPedId()
                if DoesEntityExist(ped) then
                    local coords = GetEntityCoords(ped)
                    local heading = GetEntityHeading(ped)
                    local vec3 = string.format('vector3(%.3f, %.3f, %.3f)', coords.x, coords.y, coords.z-1.0)
 
                    print('-------- PED POSITION --------')
                    print('Vec3:', vec3)
                    print('------------------------------')
                    
                    -- Copy to clipboard
                    SendNUIMessage({
                        type = 'copyToClipboard',
                        text = vec3
                    })
                end
            end
        }
    })

    -- Add ped position target
    exports.ox_target:addGlobalOption({
        {
            name = 'check_ped_position_vector4',
            icon = 'fas fa-user',
            label = 'Copy Vector4',
            onSelect = function(data)
                local ped = PlayerPedId()
                if DoesEntityExist(ped) then
                    local coords = GetEntityCoords(ped)
                    local heading = GetEntityHeading(ped)
                    local vec4 = string.format('vector4(%.3f, %.3f, %.3f, %.3f)', coords.x, coords.y, coords.z-1.0, heading)
                    
                    print('-------- PED POSITION --------')
                    print('Vec4:', vec4)
                    print('------------------------------')
                    
                    -- Copy to clipboard
                    SendNUIMessage({
                        type = 'copyToClipboard',
                        text = vec4
                    })
                end
            end
        }
    })
end

CreateThread(function()
    Initialize()
end) 