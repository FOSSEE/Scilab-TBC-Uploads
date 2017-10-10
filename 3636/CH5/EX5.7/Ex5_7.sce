clc;
clear;
Na=10^17 //in cm^-3
epsilon_0=8.85*10^-14 //in F/cm
Emax=5*10^5 //peak electric field in V/cm
e=1.6*10^-19 //in J
epsilon_si=88.76*10^-14 //in F/cm

//Calculation
E=(Emax*Emax*epsilon_si)/(e*Na)

mprintf("Breakdown voltage= %2.2f V",E) //The answers vary due to round off error
