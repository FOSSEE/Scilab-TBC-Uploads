clc
//Initialization of variables
P=1 //atm
T=300 //K
//calculations
cv=4.97
vavg=1580 //ft/s
sig=4.13*10^-18 //ft^2
N0=6.025*10^26 *0.4536
K=vavg*3600*cv/(3*N0*sig)
//results
printf("Thermal conductivity  = %.2e B/hr ft F",K)
