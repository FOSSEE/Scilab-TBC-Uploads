//Ex:64
clc;
clear;
close;
u=39.8*10^13;
r=42164*10^3;
i=2*(3.14/180);//angle of inclination in degree
a=(sqrt(u/r))*tan(i);//the magnitude of velocity impulse in m/s
printf("The magnitude of velocity impulse=%d m/s",a);