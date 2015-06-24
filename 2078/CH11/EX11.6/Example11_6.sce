//Exa 11.6
clc;
clear;
close;
//Given data :
VL=10*1000;//Volt
Emax=23;//kV/cm
gmax=Emax*10^5;//V/m
d=2*VL/gmax;//m
disp(d*10^3,"Diameter of conductor(mm)");
D=%e*d;//m
disp(D*10^3,"Internal diameter of sheath(mm)");
