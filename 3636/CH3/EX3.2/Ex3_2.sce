clear;
clc;
epsilon_r=13.2 
m0=9.11*10^-31 //in kg
q=1.6*10^-19 //in eV
epsilon_0=8.85*10^-12 //in F/m
h=6.63*10^-34 //planck's constant in J/s 

//Calculation
mn=0.067*m0 //in kg
E=((mn*q^4)/(8*(epsilon_0*epsilon_r)^2*h^2))
E1=E/q
 
mprintf("Energy required to excite the donor electron (J)= %.2e J\n",E)
mprintf("Energy required to excite the donor electron (eV)= %.4f eV",E1)
