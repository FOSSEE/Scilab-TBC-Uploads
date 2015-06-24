clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.19
// Page 391
printf("Example 6.19, Page 391 \n \n");

// solution

// basis 4000 kg/h of NaOH produced
Cl2p = 35.5*2*4000/80 // kg/h
Mcl2 = Cl2p/71 // kmol/h
P = 101.325 // kPa
Pw = 2.0624 // kPa
moist = (Pw/(P-Pw))*(18.0154/70.906) // 
Tmoist = Cl2p*moist  // kg/h
// for 90% onc of acid
n = (10/18.0153)/(90/98.0776) /// kmol H2O/kmol acid
Q = 134477/(18*(n+1.7983)^2) //kJ/kg H2O   by eq (ii)
lambdav = 2459  // kJ/kg  (Appendix IV)
heatload = Q+lambdav
fi = heatload*18.74 //kJ/h
printf(" The heat liberation rate in the tower = "+string(fi)+" kJ/h.")
