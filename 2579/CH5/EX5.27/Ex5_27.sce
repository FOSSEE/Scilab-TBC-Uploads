//Ex:5.27
clc;
clear;
close;
T=5/1000;// period in sec
c=3*10^8;// the speed of the light in m/s
h=c*T/2;// virtual height in m
printf("The virtual height = %f km", h/1000);