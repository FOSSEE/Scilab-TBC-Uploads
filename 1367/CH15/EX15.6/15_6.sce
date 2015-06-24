//Estimate Drift Velocity and time taken by electrons
//Ex:15.6
clc;
clear;
close;
id=1000;//in A/sqm
p=0.05;//resistivity in ohm-m
l=100*10^-6;//in m
m_e=0.4;//in sqm/Vsec
e=1.602*10^-19;//charge of electron in C
a=1/p;//conductivity
n_e=a/(e*m_e);//in per cubic m
v_d=id/(n_e*e);//in m/s
disp(v_d,"Drift Velocity (in m/s) = ");
t=l/v_d;//in sec
t1=t*10^6;//in msec
disp(t1,"Time taken by electrons (in msec) = ");