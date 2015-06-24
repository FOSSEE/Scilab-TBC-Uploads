// Exa 8.11
clc;
clear;
close;
format('v',8)
// Given data
l_g = 4;// in mm
l_g = l_g * 10^-3;// in m
Bg = 1.3;// in Wb/m^2
miu_o = 4*%pi*10^-7;
Hg = Bg/miu_o;
// Ampere turns for the gap
AT = Hg*l_g;// in AT
disp(AT,"The amphere turns in AT is");
