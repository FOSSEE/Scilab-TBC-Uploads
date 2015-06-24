// Example 19.6, page no-545
clear
clc
a=2.5*10^-10//m
M=1.8*10^6//A/m
e=1.6*10^-19//C
n=2/a^3
m=9.1*10^-31//kg
h=6.625*10^-34
ma=M/n
beta1=e*h/(4*%pi*m)
printf("The average magnetisation contributed per atom = %.3f Bohr Magneton",ma/beta1)
