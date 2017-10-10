// Exa 4.11

clc;
clear all;

// Given data
Rm=100; // Meter resistance(Ohms)
Ifsd=1; // Full scale deflection current(mA)
Rh=2000; // Half of full scale deflection resistance(Ohms)
V=3; // Internal battery voltage(V)

// Solution
// Using equations 4.1 and 4.2 given on page no. 104

R1=Rh-Ifsd*10^-3*Rh/V ;// Current limiting resistance(Ohms)
R2= Ifsd*10^-3*Rm*Rh/(V-Ifsd*10^-3*Rh); // Zero adjust resistance(Ohms)
 V1= V-0.05*V; // Voltage after 5 percent drop in battery voltage
R3=Ifsd*10^-3*Rh*Rm/(V1-Ifsd*10^-3*Rh);// Maximum value of R2 to compensate drop in battery

printf(' The values of R1 and R2 are %.1f Ohms and %d Ohms respectively \n ',R1,R2);
printf('The maximum value of R2 to compensate for a 5 percentage drop \n in battery voltage is =%.2f Ohms \n',R3);

