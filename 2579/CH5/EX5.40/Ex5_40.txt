//Ex:5.40
clc;
clear;
close;
ht=120;// height of transmitting antenna in m
hr=16;// height of receiving antenna in m
d=4.12*(sqrt(ht)+sqrt(hr));// line of sight range in km
p=15*1000;// power in watts
f=50;// frequency in MHz
y=300/f;// wavelenght in m
r=12*1000;// distance in m
E=(88*sqrt(p)*ht*hr)/(y*r^2);// field strength at a receiving antenna
printf("The line of sight range = %f km", d);
printf("\n The field strength at a receiving antenna = %f mV", E*1000);