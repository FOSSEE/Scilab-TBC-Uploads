//Part A Chapter 7 Example 11
clc;
clear;
close;
V=2;//m^3(Volume of vessel)
T=150//degree C
vf=0.001091;//m^3/kg//at 150 degree C
vg=0.3928;//m^3/kg//at 150 degree C
v_water=V*3/5//m^3
v_steam=V*2/5//m^3
mf=v_water/vf;//kg
mg=v_steam/vg;//kg
m=mf+mg;//kg//Total mass
x=mg/m;//dryness fraction
disp("Total mass is "+string(m)+" kg & Quality is "+string(x));
//Answer is wrong in the book.
