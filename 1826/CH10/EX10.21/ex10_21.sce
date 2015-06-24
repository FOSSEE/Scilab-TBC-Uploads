// Example 10.21, page no-283
clear
clc
rh=3.66*10^-4//m^3/C
rho=8.93*10^-3//Ohm-m
e=1.6*10^-19//C
ni=1/(rh*e)
muh=rh/rho
printf("the carrier concentration of Si doped specimen is %.3f *10^22 m^-3\n The mobility of Si doped specimen is %.5f m^2/V-s",ni*10^-22,muh)
