// Scilab Code Ex8.7:  Page-8.36 (2004)
clc;clear;
d = 8906;   //  Density of nickel,  kg per metrecube
An = 6.025e+26; //  Avogadro number, per k mol
W = 58.7;   // Atomic weight, kg
N = d*An/W; //  Number density of nickel atom,  per cubemetre
Bs = 0.65;  // Saturation magnetization,  wb per squaremetre
muo = (4*%pi*1e-7);   //  magnetic perbeability, henry/metre
mum = Bs/(N*muo);  // magnetic moment, ampere per squaremetre
X = mum/(9.27e-24); // magnetic moment, bohr magneton

printf("\nNumber density of nickel atom = %3.3e /cubemetre", N);
printf("\nMagnetic moment = %1.2f bohr magneton", X);

// Result

//  Number density of nickel atom per cubemetre = 9.141e+28 /cubemetre
//  Magnetic moment = 6.10e-01 bohr magneton 
