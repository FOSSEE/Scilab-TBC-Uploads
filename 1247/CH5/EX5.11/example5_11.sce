clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.11
// Page 225
printf("Example 5.11, Page 225 \n \n");

// solution

// (a)
Pc = 61.37 // bar
Tc = 514  //K
Tb = 351.4
P = 1 // atm
TBr = Tb/Tc
// Riedel eq
lambdav1 = 8.314472*Tb*1.092*(log(6137)-5.6182)/(.930-TBr)
// NIST eq
lambdav2 = 50430*exp(-(-.4475*TBr))*(1-TBr)^.4989
// (b)
T1 = 298.15
TBr1 = T1/Tc
// Watson eq
lambdav21 = 38563*[(514-298.15)/(514-351.4)]^.38
// NIST eq
lambdav22 = 50430*exp(-(-.4475*TBr1))*(1-TBr1)^.4969
printf(" (a) \n \n Latent heat of vaporization at Tb using \n Riedel eq is "+string(lambdav1)+" kJ/kmol \n NIST eq is "+string(lambdav2)+" kJ/kmol \n \n \n (b) \n \n Latent heat of vaporization at 298.15 K using \n Watson eq is "+string(lambdav21)+" kJ/kmol \n NIST eq is "+string(lambdav22)+" kJ/kmol")
