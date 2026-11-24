-- GH HUB PREMIUM
-- Comprobación visual de licencia (prototipo)

local License = {}

function License.check(key)
    if type(key) ~= "string" or key == "" then
        return false, "Introduce una KEY"
    end

    -- La validación real debe hacerse en un servidor seguro.
    return false, "Sistema de licencias aún no conectado"
end

return License
