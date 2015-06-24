// Exa 4.19
clc;
clear;
close;
// Given data
V_Dmin= 2.5;// in V
V_Dmax= 5;// in V
// Case First
Vs= 25;// in V
Rs= 250;// in Ω
Imax= (Vs-V_Dmin)/Rs;// in A
Imin=  (Vs-V_Dmax)/Rs;// in A
disp(Imax*10^3-Imin*10^3,"The variation in current in first case in mA is : ")
// Case sec
Vs= 10;// in V
Rs= 130;// in Ω
Imax= (Vs-V_Dmin)/Rs;// in A
Imin=  (Vs-V_Dmax)/Rs;// in A
disp(Imax*10^3-Imin*10^3,"The variation in current in second case in mA is : ")
disp("Hence for the 25-V supply, the brightness of LED will be constant and for 10 V , it will be change")
