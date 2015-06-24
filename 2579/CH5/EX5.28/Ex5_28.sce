//Ex:5.28
clc;
clear;
close;
ht=120;// transmeter height in m
hr=16;// receiver height in m
Los=4.12*(sqrt(ht)+sqrt(hr));// line of sight range in km
f=50;// frequency in MHz
y=300/f;// wavelength in m
d=12*10^3;// distance in m
p=15000;// power in watt
Er=(88*sqrt(p)*ht*hr)/(y*d^2);// field strength in v/m
Er1=1/1000;// field strength in V/m
d1=sqrt((88*sqrt(p)*ht*hr)/(y*Er1));// distance in km
printf("The line of sight range = %f km", Los);
printf("\n The field strength = %f mV/m", Er*1000);
printf("\n The distance = %d km", d1);