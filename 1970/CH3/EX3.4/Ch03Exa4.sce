// Scilab code Exa3.4: : Page-124 (2011)
clc; clear;
E_max = 1.17; // Maximum energy of the beta particle, mega electron volts
D = 2.7; // Density of Al,gram per cubic metre
u_m = 22/E_max; // Mass absorption coefficient,centimetre square per gram
x_h = log(2)/(u_m*D); // Half value thickness for beta absorption, cm
printf("\nThe Half value thickness for beta absorption = %5.3f cm", x_h); 

// Result 
// The Half value thickness for beta absorption = 0.014 cm 
