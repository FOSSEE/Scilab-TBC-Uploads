//Ex:5.29
clc;
clear;
close;
n1=1.42;// core refractive index
dl=0.02;
c=3*10^8;//the speed of light in m/s
dt=(n1*dl)/c;// intermodel disersion in sec/m
dt1=dt*1000;// intermodel disersion in sec/km
dt2=dt1*10^9;// intermodel disersion in ns/km
printf("The intermodel dispersion per km =%f ns/km", dt2);