clc();
clear;

// To estimate the mass transfer coefficient

v=20;                                 // Velocity of air ammonia mixture in ft/sec
Npr=0.72;                             // Prandtls number
Ns=0.60;                              // Schimdt number
pbm=14.7;                             // log mean pressure in psi
Mm=29;                                // Molecular weight of mixture
Mv=17;                                // Molecular weight of ammonia 
Ma=29;                                // Molecular weight of air
Cp=0.24;                              // specific heat capacity in Btu/lbm-degF
h=8;                                  // Heat transfer coefficient
p=1;                                  // Atospheric pressure in atm

hmp=h*Mv*(Npr/Ns)^(2/3)/(Cp*p*Ma);   // Mass transfer coefficient based on pressure
printf("The mass transfer coefficient based on pressure is %.1f lbm/hr-ft^2-atm",hmp);