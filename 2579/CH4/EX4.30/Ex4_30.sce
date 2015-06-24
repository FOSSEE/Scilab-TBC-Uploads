//Ex:4.30
clc;
clear;
close;
f=5000;// frequency in MHz
y=300/f;// wavelength in m
d=30*0.3048;// aperture dimension in m
r=(2*d^2)/y;// min distance in m
printf("The min distance = %f meter", r);