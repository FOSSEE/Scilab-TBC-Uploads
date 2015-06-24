//Example 2_7_u2
clc();
clear;
//To calculate the probability for a state 
//When 0.1 eV above the fermi energy
e_ef=0.1      //units in eV
kb=8.62*10^-5
t=800        //units in kelvin
fE=1/(1+exp((e_ef)/(kb*t)))
printf("The probability of occupancy for a state whose energy is 0.1 eV above the fermi energy is f(E)=%.3f",fE)
//0.1 eV below the fermi energy level
e_ef=-0.1      //units in eV
fE=1/(1+exp((e_ef)/(kb*t)))
printf("\nThe probability of occupancy for a state whose energy is 0.1 eV below the fermi energy is f(E)=%.3f",fE)
//Equal to the fermi energy level
e_ef=0      //units in eV
fE=1/(1+exp((e_ef)/(kb*t)))
printf("\nThe probability of occupancy for a state whose energy is 0.1 eV and  equal to the fermi energy is f(E)=%.3f",fE)
