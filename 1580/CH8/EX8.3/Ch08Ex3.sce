// Scilab Code Ex8.3 :  Page-8.34 (2004)
clc;clear;
H = 10^4;    // Magnetic field strength, amp/metre
ki = 3.7e-3;    //  Magnetic susceptibility, units 
M = ki*H;    // Magnetization of ferromagnetic material, amp/metre
muo = 4*%pi*1e-7;   //  Magnetic perbeability, henry/metre
B = muo*(M+H);  //  Flux density, weber/square meter
printf("\nMagnetization of ferromagnetic material, = %d amp/metre", M);
printf("\nFlux density of ferromagnetic material, = %3.4f weber/squaremetre ", B);

// Result

//  Magnetization of ferromagnetic material, = 37 amp/metre
//  Flux density of ferromagnetic material, = 0.0126 weber/squaremetre
