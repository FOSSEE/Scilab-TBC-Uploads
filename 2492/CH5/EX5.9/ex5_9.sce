// Exa 5.9
format('v',9)
clc;
clear;
close;
// Given data
h_fe = 100;
h_ie = 1;// in k ohm
h_ie = h_ie * 10^3;// in ohm
vo_by_I= -100*10^3;// in ohm
vi_by_I= 1100+101*0.1*10^3;// in ohm
Av= vo_by_I/vi_by_I;
Av= round(Av);
Av= abs(Av);
disp(Av,"The mid-band voltage gain is");
//Ri =Vi/Ii;
Ri= vi_by_I;// in ohm
Ri= Ri*10^-3;// in k ohm
disp(Ri,"The input impedance in k ohm is");
