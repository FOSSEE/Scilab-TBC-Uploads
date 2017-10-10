clc;
clear;
Na=10^19 //doping densities in cm^-3
Nd=10^15 //in cm^-3
epsilon_s=88.76*10^-14 //in F/cm
e=1.6*10^-19 //in J
Vbi=300 //breakdown voltage in V

//Calculation
xn=((2*epsilon_s*Na*Vbi)/(e*Nd*(Na+Nd)))^0.5

mprintf("a)\n")
mprintf(" As %.4e cm is less than the given length of the n-region i.e 22 micro-m, device will only have avalanche breakdown",xn)
