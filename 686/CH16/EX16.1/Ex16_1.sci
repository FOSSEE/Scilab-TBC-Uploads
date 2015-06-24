clc();
clear;

// To calculate the siffusion coefficient

 T = 87.5;                    // Constant temperature of tube
 p1 = 0.6543;                 // Saturation pressure in psi
 p = 14.22;                   // Ambient pressure
 e = 5.165*10^-5;             // Rate of evaporation in lb/hr
 A = 0.755;                   // Area of tube in in^2
 m = e*144/A;                 // Mass flux in lb/hr-ft^2
 M = 18.0165;                 // Molecular weight of water
 R = 1545/M;                  // Gas  constant
 l = 2.527/12;                // Length of tube in ft
 D = m*R*(T+460)*l/(p*144*log(p/(p-p1)));             // Diffusion coefficient
 printf("The diffusion coefficient of water vapour over air is %.3f ft^2/hr",D)