// Example 18.16, page no-470
clear
clc
E=600*10^3 //V/m
eps=8.854*10^-12 //F/m
epsr=6
p=eps*(epsr-1)*E
printf("Polarisation produced in NaCl is %.3f *10^-5 C.m^-2",p*10^5)
