clc();
clear;
//calculating temperatue when average thermal energy of an atom is equal to it's magnetic energy.
//The given condition is (mew*B)=3/2(kT)
mew=0.9*10^-23;             //magnetic dipole moment 
B=0.72;                     //magnetic field applied in T
k=1.38*10^-23;
T=(2*mew*B)/(3*k)          //T=temperature in Kelvin
printf("The temperature at which the avg.thermal energy of an atom is equal to its magnetic energy is%f K",T);