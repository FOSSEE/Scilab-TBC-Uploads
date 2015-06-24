//Ex:1.23
clc;
clear;
close;
u=4*%pi*10^-7;//in H/m
i=20;//in amps
d=50*10^-3;//in meters
B=(u*i)/(2*%pi*d);
printf("Flux Density = %e Tesla",B);