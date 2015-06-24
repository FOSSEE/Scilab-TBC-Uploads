// Exa 4.11
clc;
clear;
close;
// Given data
V_Dmin= 1.8;// in V
V_Dmax= 3;// in V
// Case first
Vs= 24;// in V
R1= 820;// in Ω
Imin=  (Vs-V_Dmax)/R1;// in A
Imax= (Vs-V_Dmin)/R1;// in A
disp(Imax*10^3-Imin*10^3,"The variation in current in first case in mA is : ")
// Case second
Vs= 5;// in V
R1= 120;// in Ω
Imin=  (Vs-V_Dmax)/R1;// in A
Imax= (Vs-V_Dmin)/R1;// in A
disp(Imax*10^3-Imin*10^3,"The variation in current in first case in mA is : ")
disp("The variation in current in first case is smaller than in second case, So the brighness in the first case will remain constant , whereas in the second case it will be changing.")
