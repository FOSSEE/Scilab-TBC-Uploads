// Scilab code Exa3.2.3: Calculation of mass of 1 Ci sample of radioactive sample : Page 125 (2011)
A = 3.7e+010; // Activity of 1Ci sample, dps
t = 1608; // Half life of radioactive substance, s
N = 6.023e+023/214; // Number of atoms in 1g of substance having atomic mass 214
lambda = 0.6931/t; // Decay constant, s^-1
m = A/(lambda*N); // The mass of radoiactive substance, g
printf("\nThe mass of radioactive substance : %4.2e g", m)
//   Result
//     The mass of radioactive substance : 3.05e-008 g 