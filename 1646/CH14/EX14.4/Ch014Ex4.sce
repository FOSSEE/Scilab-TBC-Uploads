// Scilab code Ex14.4 : Pg:720(2011)
clc;clear;
Nd = 1;     // For simplicity assume donor concentration to be unity, per metre cube
Nd_prime = 3*Nd;   // Thrice the donor concentration, per metre cube
dE_CF1 = 0.5;  // Energy difference between normal Fermi level and conduction level, eV
k_BT = 0.03;    // Thermal energy at room temperature, eV
// As Nd_prime/Nd = exp((dE_CF1 - dE_CF2))/k_BT, solving for dE_CF2
dE_CF2 = dE_CF1-k_BT*log(Nd_prime/Nd);  // Energy difference between new postion of Fermi level and conduction level, eV
printf("\nThe new postion of Fermi level when donor concentration is trebled = %5.3f eV", dE_CF2);

// Result
// The new postion of Fermi level when donor concentration is trebled = 0.467 eV 
