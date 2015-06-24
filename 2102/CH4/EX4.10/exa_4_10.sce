// Exa 4.10
clc;
clear;
close;
// Given data
V_Dmin= 1.5;// in V
V_Dmax= 2.3;// in V
Vs= 10;// in V
R1= 470;// in Ω
Imax= (Vs-V_Dmin)/R1;// in A
Imin=  (Vs-V_Dmax)/R1;// in A
disp(Imax*10^3,"The maximum value of current in mA is : ")
disp(Imin*10^3,"The minimum value of current in mA is : ")
