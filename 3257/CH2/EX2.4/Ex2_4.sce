// Elimination of stress by tension
clc
sigma_t = 140 // in MPa
sigma_c = -140 // in MPa
l = 0.25 // length of specimen in m
Y = 150 // yield stress of material in MPa
E = 70 // Youngs modulus in GPa
printf("\ Example 2.4")
epsilon_tot = (sigma_c*1e6)/(E*1e9)  + Y*1e6/(E*1e9)  // total strain
l_f = l*exp(epsilon_tot)

printf("\n Stretched length should be %0.4f m",l_f)
// Numerical value of answer in book is 0.2510

