//Exa 5.6
clc;
clear;
close;
//Given Data :
format('v',6);
P_del=10000*10^3;//in Watts
cos_fir=0.8;//unitless
R=0.95;//in ohm/km
VR=132*10^3;//in volt
IL=P_del/(sqrt(3)*VR*cos_fir);//in Ampere
//TotalLosses=3*I^2*R and should be equal to (7.5/100)*P_del;//in watt
l=(7.5/100)*P_del/(3*IL^2*R);//in km
disp(l,"Distance (in km) :");