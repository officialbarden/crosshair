scoreboard players remove @s crosshair-ui.Raycast 1
execute if score @s[tag=crosshair-ui.ShowIcon] crosshair-ui.Raycast matches ..0 run return run function crosshair-ui:zprivate/raycast/remove_ui
execute if score @s crosshair-ui.Raycast matches ..0 run return run function crosshair-ui:zprivate/raycast/remove_ui

execute if block ~ ~ ~ #crosshair-ui:interactable run return run function crosshair-ui:zprivate/crosshair_icon/init
execute if entity @n[type=#crosshair-ui:interactable,dx=0] positioned ~-0.25 ~-0.25 ~-0.25 if entity @n[type=#crosshair-ui:interactable,dx=0] run return run function crosshair-ui:zprivate/crosshair_icon/init

execute if block ~ ~ ~ #crosshair-ui:air positioned ^ ^ ^0.1 run return run function crosshair-ui:zprivate/raycast/cast
execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #crosshair-ui:air unless block ~ ~ ~ #crosshair-ui:interactable run return run function crosshair-ui:zprivate/raycast/remove_ui