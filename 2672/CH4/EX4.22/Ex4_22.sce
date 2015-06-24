//Example 4_22
clc;
clear;
close;
format('e',8);
//given data : 
e=1.6*10^-19;//C/electron
d=270;//g/cm^3
rho=3.44*10^-6;//ohm-cm
ne=3;//electrons/atom
me=26.97*1.66*10^-27
n0=d/100*ne*10^-3/me*10^6;//m^-3
mu=1/n0/e/rho*10^2;//V-sec
disp(mu,"Mobility of free electron(m^2/V-s)")
