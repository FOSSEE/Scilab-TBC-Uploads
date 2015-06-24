// Example 5.6;//ratio of threshold current at differnt temperatures
clc;
close;
clear;
To1=160;//Absolute temperature in Kelvin
To=55;//in Kelvin
T1=293;//T=20 in Kelvin
T2=353;//T=80 in Kelvin
J1=exp((T2-T1)/To1);//threshold current ration for AlGaAs laser
J2=exp((T2-T1)/To);//threshold current RATIO FOR InGaAs laser
disp(J1,"ratio of the threshold current densities for AlGaAs laser")
disp(J2,"ratio of current densities for InGaAs laser")
