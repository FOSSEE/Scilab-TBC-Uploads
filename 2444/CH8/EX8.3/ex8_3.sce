// Exa 8.3
clc;
clear;
close;
format('v',5)
// Given data
Av1 = -60;// voltage gain of first stage 
R_C = 500;// in ohm
Rin = 1;// in k ohm
Rin = Rin * 10^3;// in ohm
h_fe = 50;// unit less
Av2 = -h_fe*(R_C/Rin);// voltage gain of second stage 
Av = Av1*Av2;// overall voltage gain stage 
disp(Av,"The overall voltage gain is");
