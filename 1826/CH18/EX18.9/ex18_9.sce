// Example 18.9, page no-465
clear
clc
E=1000//V.m^-1
P=4.3*10^-8 //C.m^-2
eps=8.854*10^-12 //F.m^-1
epsr=1+P/(eps*E)
printf("The relative permittivity of NaCl is %.2f",epsr)
