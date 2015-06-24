// Example 18.11, page no-466
clear
clc

epsr=1.0000684
N=2.7*10^25 //atoms.m^-3
eps=8.854*10^-12//F.m^-1
alfe=eps*(epsr-1)/N
printf("The electronic polarisability of He atom at NTP is %.3f * 10^-41 F m^2",alfe*10^41)
