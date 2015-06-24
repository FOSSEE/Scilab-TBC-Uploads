// Exa 4.18
clc;
clear;
close;
// Given data
V_Dmin= 1;// in V
V_Dmax= 2;// in V
Vs= 20;// in V
R1= 470;// in Ω
Imax= (Vs-V_Dmin)/R1;// in A
Imin=  (Vs-V_Dmax)/R1;// in A
disp(Imax*10^3,"The maximum value of current in mA");
disp(Imin*10^3,"The maximum value of current in mA");
