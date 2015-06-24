// Exa 1.9
clc;
clear;
close;
// Given data
format('v',13)
rho= 0.5;// in Ω-m
miu_c= 0.4;// in m^2/v-sec
J=100;//in A/m^2
distance=10;// µm
distance=distance*10^-6;//in sec
// V= miu_c*E = miu_c*J/sigma = miu_c*J*rho 
V=  miu_c*J*rho ;// in m/sec
disp(V,"Drift velocity in m/sec is : ")
T= distance/V;// in second
disp(T,"The time taken by the electron to travel 10 micro meter in the crystal in second is :  ")
