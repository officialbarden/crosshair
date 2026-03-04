execute if entity @s[tag=crosshair-ui.ShowIcon] run return fail
title @s times 0.2s 99999s 0.1s
execute if block ~ ~ ~ #doors run return run function crosshair-ui:zprivate/raycast/found {UI: "\uE004"}
function crosshair-ui:zprivate/raycast/found {UI: "\uE001"}
