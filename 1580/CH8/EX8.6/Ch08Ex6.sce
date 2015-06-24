// Scilab Code Ex8.6: Page-8.36 (2004)
clc;clear;
A = 6.025e+26; //  Avogadro number, per k mol
W = 157.26;   // Atomic weight, kg
d = 7.8e+3;   // Density of nickel,kg metrecube
N = d*A/(W*1000);  //  No of atoms, per gm metrecube
muo = 4*%pi*1e-7;   //  Magnetic perbeability, henry per m
mum = N*7.1*(9.27e-24);  // Magnetic moment, ampere metersquare
Bs = mum*muo;  // Saturation magnetization, weber/squaremetre
printf("\nMagnetic moment = %6.4e ampere meter square", mum);
printf("\nSaturation magnetization = %6.4e weber/squaremetre", Bs);

// Result
//  Magnetic moment = 1.9669e+03 ampere meter square
//  Saturation magnetization = 2.4716e-03 weber/squaremetre 

