// Exa 1.5
clc;
clear;
close;
// Given data
B_h = 755;// Barometric height in mm
M_h= 240;// Manometer height in mm
P = B_h+M_h;// in mm 
P = P/750;// absolute pressure in bar
P= P*10^5;// in N/m^2
disp(P*10^-6,"The absolute pressure in the vessel in MN/m^2 is");
disp(P*10^-5,"The absolute pressure in the vessel in bar is");
