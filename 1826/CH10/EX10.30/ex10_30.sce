// Example 10.30, page no-288
clear
clc
rho=1.54*10^-8//ohm-m
E=100//V/m
ni=5.8*10^28//m^3
e=1.6*10^-19//C
mu=1/(rho*ni*e)
vd=mu*E
printf("The mobility of electrons in silver is %.4f*10^-3 m^2/V-s\nThe drift velocity id %.5f m/s",mu*10^3,vd)
