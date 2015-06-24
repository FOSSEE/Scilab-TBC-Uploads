//Ex:5.15
clc;
clear;
close;
n1=1.46;// core refractive index
df=0.025;
L=500;// length in m
c=3*10^8;// the speed of light in m/s
dt=(n1*L*df^2)/(8*c);// max dispersion in ns/m
printf("The  max dispersion =%f ns/m", dt*10^9);
printf("\n The answer in the textbook is wrong");