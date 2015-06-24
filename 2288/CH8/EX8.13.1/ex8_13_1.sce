// Exa 8.13.1
clc;
clear;
close;
// Given data
R= 10;// in kΩ
R= R*10^3;// in Ω
// Part (i)
V=300;// in V
I_A= V/R;// in A
disp("Part (i) : For 300 V voltage : ")
disp(I_A*10^3,"The anode current in mA is : ");
// Part (ii)
V=100;// in V
I_A= V/R;// in A
disp("Part (ii) : For 100 V voltage : ")
disp(I_A*10^3,"The anode current in mA is : ");
