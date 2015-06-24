//Example 2.2.6 page 2.8

clc;
clear;

p0=3*10^-3;
pz=3*10^-6;
alpha= 0.5;
z= log10(p0/pz)/(alpha/10);
printf("The Length of the fibre is %.f Km",z);
