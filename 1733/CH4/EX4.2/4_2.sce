//4.2
clc;
f=500;
T=1/f;
Vav=15*(0.06+0.03)+100;
V=200;
Ton=(Vav/V)*T;
printf("Period of conduction = %.7f sec", Ton)
Toff=T-Ton;
printf("\nPeriod of blocking = %.7f sec", Toff)