//Chapter 11_Nonlinear Circuit Application
//Caption :Time taken
//Example11.4: b)Type 741 Op-amp is used as a comparator and its slew rate is 0.5V/us.How long will it change from +10 V to -10v?
//b)Solution:
clear;
clc;
deltaVo=10-(-10);
SlewRate=0.5*10^-6;
t=deltaVo/SlewRate;
disp('us',t/10^6,'time taken by the output voltage to change from +10 V to -10 V is:')