clear;
clc;

// Illustration 1.20
// Page: 58

printf('Illustration 1.20 - Page:58 \n\n');
// Solution

//*****Data*****//
// A-hydrogen   B-ethane
T = 373; // [K]
P = 10; // [atm]
d = 4000; // [Angstrom]
e = 0.4; // [porosity]
t = 2.5; // [tortuosity]
D_AB = 0.86/P; // [square cm/s]
k = 1.3806*10^-23; // [J/K]
//*****//

// Using data from Appendix B for hydrogen and ethane, and equation (1.45)
sigma_A = 2.827; // [Angstrom]
sigma_B = 4.443; // [Angstrom]
sigma_AB = ((sigma_A+sigma_B)/2)*10^-10; // [m]

lambda = k*T/(sqrt(2)*3.14*(sigma_AB^2)*P*1.01325*10^5); // [m]
lambda = lambda*10^10; // [Angstrom]
// From equation 1.101
K_n = lambda/d;
printf("The value of a dimensionless ratio, Knudsen number is %f\n\n",K_n);
// If K_n is less than 0.05 then diffusion inside the pores occurs only by ordinary molecular diffusion and equation 1.100 can be used to calculate D_ABeff
D_ABeff = D_AB*e/t;
printf("The effective diffusivity of hydrogen in ethane is %f square cm /s",D_ABeff);  