//Ex:1.22
clc;
clear;
close;
f=60*10^-6;// frequency in MHz
y=300/f;// wavelength in m
r=y/(2*3.14);// distance in m
printf("The distance = %f*10^6 m", r/10^6);