//chapter 6
//example 6.2
//Calculate the temperature
//page 146
clear;
clc;
//given

k=1.38E-23; // in J/K (Boltzmann's constant)
e=1.6E-19; // in C (charge of electron)
P_E=1; // in percentage (probability that a state with an energy 0.5 eV above Fermi energy will be occupied)
E=0.5; // in eV (energy above Fermi level)
//calculate
P_E=1/100; // changing percentage into ratio
E=E*e; // changing unit from eV to J
// P_E=1/(1+exp((E-E_F)/k*T))
// Rearranging this equation, we get
// T=(E-E_F)/k*log((1/P_E)-1)
// Since E-E_F has been denoted by E  therefore
T=E/(k*log((1/P_E)-1));
printf('\nThe temperature is \tT=%.f K',T);
// Note: There is slight variation in the answer due to logarithm function
