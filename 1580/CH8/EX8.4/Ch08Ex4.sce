// Scilab Code Ex8.4: Page-8.34 (2004)
clc;clear;
d = 8906;   //  Density of nickel, kg metrecube
An = 6.025e+26; //  Avogadro number, per kmol
W = 58.7;   // Atomic weight, kg
N = d*An/W; //  Number of nickel atom, per cubemetre
Bs = 0.65;  // Saturation magnetic, weber per squaremetre
muo = (4*%pi*1e-7);   //  Magnetic perbeability, henry/metre
mum = Bs/(N*muo);  // Magnetic moment, ampere per sqauremetre
X = mum/(9.27e-24); // magnetic moment, bohr magneton

printf("\nNumber of nickel atom per cubemetre = %3.3e /cubemetre", N);
printf("\nMagnetic moment = %1.2e bohr magneton", X);

// Result

//  Number of nickel atom per cubemetre = 9.141e+28 /cubemetre
//  Magnetic moment = 6.10e-01 bohr magneton 
