//Exa2.34
clc;
clear;
close;
//given data
Hc_0=8*10^5;//in A/m
Tc=7.26;//in K
T=4;//in K
Hc_T=Hc_0*[1-(T/Tc)^2]';
disp("The critical value of magnetic field at T=4 K is : "+string(Hc_T)+" A/m");