// Exa 8.3
clc;
clear;
close;
format('v',6)
// Given data
Ig = 4;// in mm
Ig = Ig * 10^-3;// in m
B = 1.3;// in Wb/m^2
miu_r = 1;
miu_o = 4*%pi*10^-7;
H = B/(miu_o*miu_r);// in AT/m
Hg = H;// in AT/m
// Ampere turn required for air gap
AT = Hg*Ig;// AT for air gap in AT
disp(AT,"The amphere turns for the gap in AT is");
