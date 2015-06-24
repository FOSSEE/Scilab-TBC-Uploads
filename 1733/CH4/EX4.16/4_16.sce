//4.16
clc;
Vav=250;
V=200;
Toff=0.6*10^-3;
Ton=(Vav/V)*Toff-Toff;
printf("Period of conduction = %.5f sec", Ton)