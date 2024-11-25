#!/bin/bash
# converted from make_time_pilot_proms.bat 
# 11/2024 Red~Bote (Glenn.neidermeier)

#copy /B tm1 + tm2 + tm3 time_pilot_prog.bin
#copy /B tm4 + tm5 time_pilot_sprite_grphx.bin
#
#make_vhdl_prom time_pilot_prog.bin time_pilot_prog.vhd
#make_vhdl_prom time_pilot_sprite_grphx.bin time_pilot_sprite_grphx.vhd
#make_vhdl_prom tm6 time_pilot_char_grphx.vhd
#make_vhdl_prom tm7 time_pilot_sound_prog.vhd
#
#make_vhdl_prom timeplt.b4  time_pilot_palette_blue_green.vhd
#make_vhdl_prom timeplt.b5  time_pilot_palette_green_red.vhd
#make_vhdl_prom timeplt.e9  time_pilot_sprite_color_lut.vhd
#make_vhdl_prom timeplt.e12 time_pilot_char_color_lut.vhd
#
#del time_pilot_prog.bin
#del time_pilot_sprite_grphx.bin


cat tm1 tm2 tm3 > time_pilot_prog.bin
cat tm4 tm5 > time_pilot_sprite_grphx.bin

./make_vhdl_prom time_pilot_prog.bin time_pilot_prog.vhd
./make_vhdl_prom time_pilot_sprite_grphx.bin time_pilot_sprite_grphx.vhd
./make_vhdl_prom tm6 time_pilot_char_grphx.vhd
./make_vhdl_prom tm7 time_pilot_sound_prog.vhd

./make_vhdl_prom timeplt.b4  time_pilot_palette_blue_green.vhd
./make_vhdl_prom timeplt.b5  time_pilot_palette_green_red.vhd
./make_vhdl_prom timeplt.e9  time_pilot_sprite_color_lut.vhd
./make_vhdl_prom timeplt.e12 time_pilot_char_color_lut.vhd

rm time_pilot_prog.bin
rm time_pilot_sprite_grphx.bin

