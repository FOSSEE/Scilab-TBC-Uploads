// Example 12.3, page no-351
clear
clc
k=371//J/msk
delT=50//in degrees
delx=10*10^-3
ht=k*delT/delx
printf("The steady state heat transfer of 10 mm copper sheet is %.3f *10^6 J.m^-2.s^-1",ht*10^-6)
