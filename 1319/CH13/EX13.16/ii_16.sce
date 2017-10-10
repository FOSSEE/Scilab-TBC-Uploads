//Compute Loss of energy

clc;
clear;

w=10;
f=50;// 50 cycles in a second.

ls_vol=250;

density=7.5;// Density in gm/cm^3

d= density*(10^6)/(10^3);

vol=w/d;

ls_cycle= ls_vol*vol;

ls_sec= ls_cycle*50;

ls_hr= ls_sec*3600;

disp('joules',ls_hr,'The Loss of energy per hour of an iron loop')
