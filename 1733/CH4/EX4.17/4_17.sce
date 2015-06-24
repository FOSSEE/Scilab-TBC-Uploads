//4.16
clc;
Vav=250;
V=150;
Toff=1*10^-3;
Ton=(Vav/V)*Toff-Toff;
printf("Period of conduction = %.6f sec", Ton)