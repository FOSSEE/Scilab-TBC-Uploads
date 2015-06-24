// Example 10.26, page no-285
clear
clc
rho=0.1//Ohm-m
ni=10^20//per m^3
vd=1//m/s
e=1.6*10^-19//C
mu=1/(rho*ni*e)
E=vd/mu
printf("\nThe mobility of the electrons in material is %.3f m^2/V-s\nThe electric field is %.1f V/m",mu,E)
