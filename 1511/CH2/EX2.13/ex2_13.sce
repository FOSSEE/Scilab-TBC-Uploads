// Example 2.13 page no-60
clear
clc
Ew=1  //eV
A0=100 // A/m2 I °K2
S=1.8*10^-4 //cm2
K =8.62 * 10^-5  //eV/oK
T=1100
pd=5.8*10^4 //W/m^2
ipd=1.1*pd
tip=S*ipd
Ith=S*A0*T^2*%e^(-Ew/(K*T))
printf("\nIth=%.3f A\nCathode Efficiency, eta=%.0f mA/°K",Ith,ceil(Ith*1000/11.5))
