#places the starting hole and bonus hole in the overworld; also sets the worldspawn.
execute in overworld run function stoneblock:start_placer/ow

#same thing as above, but for the nether.
execute in the_nether run function stoneblock:start_placer/nether

#same thing but for the end
execute in the_end run function stoneblock:start_placer/end_nodes

#sets stoneblock loaded score to 1 to end clock.
scoreboard players set $sb loaded 1

#clock function
execute unless score $sb loaded matches 1 run schedule function stoneblock:oob/detection_clock 1s replace