
execute store result score @s crosshair-ui.Raycast run attribute @s block_interaction_range base get 10

# // Clamp Value so It Doesn't Raycast to Infinity: (Clamp to 50 blocks)
execute if score @s crosshair-ui.Raycast matches 501.. run scoreboard players set @s crosshair-ui.Raycast 500

execute anchored eyes positioned ^ ^ ^0.1 run function crosshair-ui:zprivate/raycast/cast

