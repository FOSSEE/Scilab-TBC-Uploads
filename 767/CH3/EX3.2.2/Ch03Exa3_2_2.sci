// Scilab code Exa3.2.2: To calculate the activity of 10g of Th-232 : Page 125 (2011)
lambda_232 = 1.58e-018; // Decay constant, s^-1
N = 2.596e+022; // Number of atoms in 10g Th-232
A = N*lambda_232; // The activity of 10g of Th-232, dps
printf("\nThe activty of 10g of Th-232 : %5.3e dps", A)
//   Result
//   The activty of 10g of Th-232 : 4.102e+004 dps
