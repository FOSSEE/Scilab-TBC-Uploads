//Ex:5.22
clc;
clear;
close;
f=150;// frequency in MHz
y=300/f;// wavelength in m
ht=20;// transmeter height in km
hr=2;// receiver height in km
d=40*10^3;// distance in m
p=100;// power in watt
Er=(88*sqrt(p)*ht*hr)/(y*d^2);// field strength in uV/m
printf("The field strength = %d uV/m", Er*10^6);