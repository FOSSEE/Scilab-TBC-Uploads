//Example 3_20 page no:240
clc;
//given
floor_area = 6*6;//in m^2
ceiling_area = 6*6;//in m^2
temp = 18;//in C
wall_AB = 6*3;//in m^2
cavity = 0.4;//in m
win_len = 1.2;//in m
win_width = 1.8;//in m
external_temp = 1.5;//in C
//calculating heat losses from walls
ceiling_loss = ceiling_area * 12.288 * 10^3 * (temp - external_temp);
wall_AB_loss = 2*(temp - 2.16)*3.885*10^3*(temp - external_temp);
win_area_loss = 2 * 2.16 *23.1*10^3*(temp - external_temp);
wall_C_loss = 18*8.18*10^3*(18-12);
tot_heat_loss = ceiling_loss + wall_AB_loss + win_area_loss + wall_C_loss;
vol_air_perH = 6*6*3*1.5;
heat_loss_perH = 1.22 *10^3 * 162 * (18-1.5);
heat_loss_perH = heat_loss_perH/(776.19);
tot_vol = 108;
heat_perM = heat_loss_perH/tot_vol;
disp(heat_perM,"the heat required to maintain a temperature of 18C in an office is (in W/m^3)");
