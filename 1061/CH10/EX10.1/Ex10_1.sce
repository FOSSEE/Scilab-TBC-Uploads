//Ex:10.1
clc;
clear;
close;
r=30.8*10^-12;// electro optice coefficient in m/V
L=3*10^-2;// length in m
y=1.3*10^-6;// wavelength in m
n=2.1;
d=30*10^-6;// distance between the electrodes in m
V=(y*d)/((n)^3*r*L);// voltage required to have a pi radian phase change in volt
printf("The voltage required to have a pi radian phase change  =%f volt", V);