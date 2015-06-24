//Ex:9.2
clc;
clear;
close;
e=1.602*10^-19;// charge
h=6.626*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
y=0.85*10^-6// wavelength in m
R=0.274;// responsivity in A/W
n=(R*h*c)/(e*y);// quantum efficiency
n1=n*100;// % of quantum efficiency
printf("The quantum efficiency =%f %%", n1);