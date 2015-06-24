// Example 6.9;//ratio of threshold current at differnt temperatures
clc;
close;
clear;
To=160;//Absolute temperature in Kelovin
T1=293;//T=20 in kelvin
T2=353;//T=80 in kelvin
J1=exp(T2/To);//threshold current at T=80 degree celsius
J2=exp(T1/To);//threshold current at T=20 degree celsius
Jr=(J1/J2);//ratio of threshold current
disp(Jr,"ratio of threshold current is")
