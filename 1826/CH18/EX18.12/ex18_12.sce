// Example 18.12, page no-467
clear
clc
epsr=12
N=5*10^28 //atoms.m^-3
eps=8.854*10^-12//F.m^-1
alfe=eps*(epsr-1)/N
printf("The electronic polarisability of given element is %.3f * 10^-39 F m^2",alfe*10^39)
