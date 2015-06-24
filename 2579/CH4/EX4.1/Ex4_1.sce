//Ex:4.1
clc;
clear;
close;
c=3*10^8;// the speed of light in m/s
f=88*10^6;// frequency in Hz
r=0.95;// in m
y=c/f;// wavelength in m
l1=y/2; 
l2=r*l1; 
l3=r*l2; 
l4=r*l3; 
l5=r*l4; 
d1=0.08*y; 
d2=r*d1; 
d3=r*d2; 
d4=r*d3;
d=d1+d2+d3+d4;// overall length of the antenna support boom in m
printf("The wavelength = %f meter", y);
printf("\n The overall length of the antenna support boom = %f meter", d);