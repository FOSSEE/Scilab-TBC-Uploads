clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.10
// Page 225
printf("Example 5.10, Page 225 \n \n");

// solution

// (a)
Pc = 3732  // kPa
Tc = 630.3  // K
Tb = 417.6  //K
TBr = Tb/Tc
lambdav = 8.314472*417.6*(1.092*(log(3732)-5.6182)/(.930-.6625))
// (b)
T1 = 298.15  //K
lambdav1 = 36240*[(630.3-298.15)/(630.3-417.6)]^.38
printf(" (a) \n \n Latent heat of vaporization at Tb using Riedel eq is "+string(lambdav)+" kJ/kmol. \n \n \n (b) \n \n Latent heat of vaporizaation at 298.15 K using Watson eq is "+string(lambdav1)+" kJ/kmol.")
