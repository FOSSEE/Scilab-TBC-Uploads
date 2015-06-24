// Example 18.10, page no-466
clear
clc

epsr=1.0024
N=2.7*10^25 //atoms.m^-3
eps=8.854*10^-12//F.m^-1
alfe=eps*(epsr-1)/N
printf("The polarisability of argon atom is %.1f * 10^-40 F m^2",alfe*10^40)

