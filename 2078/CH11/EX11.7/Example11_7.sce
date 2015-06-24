//Exa 11.7
clc;
clear;
close;
//Given data :
VL=132*1000;//Volt
gmax=60;//kV/cm(peak)
gmax=gmax/sqrt(2)*10^5;//V/m(rms)
V=VL/sqrt(3);//Volt
d=2*V/gmax;//m
disp(d*10^3,"Diameter of conductor(mm)");
D=%e*d;//m
disp(D*10^3,"Internal diameter of sheath(mm)");
