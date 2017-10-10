//Example 15// Ch 3
clc;
clear;
close;
// given data
Ie=3;//current flow in amperes
A=8*10^-4;//area of the electrodes in m^2
V=20;//voltage across the electrodes
d=0.8;//spacing between the electrodes in meters
n_e=1*10^17;//electron density in m^-3
e=1.6*10^-19;
ke=(Ie*d)/(A*V*n_e*e);
printf("mobility of electrons %f m^2/sV",ke)
