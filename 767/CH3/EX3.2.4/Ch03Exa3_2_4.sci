// Scilab code Exa3.2.4: To calculate the activity of 1kg of U-238: Page 125 (2011)
t =  1.419e+017; // Half life of U-238, s
N = 6.023e+023/238; // Number of atoms in 1g of U-238
lambda = 0.6931/t; // Decay constant, s^-1
A = (lambda*N)*1000/(3.7e+010); // The activity of 1kg of U-238, Ci
printf("\nThe activity of 1kg of U-238 : %4.2e Ci", A)
//   Result
//     The activity of 1kg of U-238 : 3.34e-004 Ci
