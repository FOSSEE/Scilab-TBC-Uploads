//4.1
clc;
f=1000;
T=1/f;
Vav=150;
V=230;
Ton=(Vav/V)*T;
printf("Period of conduction = %.6f sec", Ton)
Toff=T-Ton;
printf("\nPeriod of blocking = %.6f sec", Toff)