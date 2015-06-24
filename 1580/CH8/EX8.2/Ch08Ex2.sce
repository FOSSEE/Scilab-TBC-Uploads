// Scilab Code Ex8.2: Page-8.33 (2004)
clc;clear;
H = 10^6;    // Magnetic field strength, amp/metre
ki = 1.5e-3;    //  Magnetic  susceptibility, units
M = ki*H;    // Magnetization of ferromagnetic material, amp/metre
muo = 4*%pi*1e-7;   //  Magnetic permeability, henry/metre
B = muo*(M+H);  //  Flux density,tesla
printf("\nMagnetization of ferromagnetic material, = %3.1e amp/metre", M);
printf("\nFlux density of ferromagnetic material, = %5.3f tesla", B);

// Result

//  Magnetization of ferromagnetic material, = 1.5e+03 amp/metre
//  Flux density of ferromagnetic material, = 1.259 tesla 
