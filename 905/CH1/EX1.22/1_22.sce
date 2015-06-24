clear;
clc;

// Illustration 1.22
// Page: 61

printf('Illustration 1.22 - Page:61 \n\n');
// Solution

//*****Data*****//
//   a-oxygen   b-nitrogen
T = 293; // [K]
P = 0.1; // [atm]
d = 0.3*10^-6; // [m]
e = 0.305; // [porosity]
t = 4.39; // [tortuosity]
k = 1.3806*10^-23; // [J/K]
R = 8.314; // [cubic m.Pa/mole.K]
l = 2*10^-3; // [m]
D_ab = 2.01*10^-4; // [square m/s]
y_a1 = 0.8;
y_a2 = 0.2;
//*****//

// Using data from Appendix B for oxygen and nitrogen, and equation (1.45)
sigma_a = 3.467; // [Angstrom]
sigma_b = 3.798; // [Angstrom]
sigma_AB = ((sigma_a+sigma_b)/2)*10^-10; // [m]

lambda = k*T/(sqrt(2)*3.14*(sigma_AB^2)*P*1.01325*10^5); // [m]
// From equation 1.101
K_n = lambda/d;
printf("The value of a dimensionless ratio, Knudsen number is %f\n\n",K_n);

// It means that both molecular and Knudsen diffusion are important and equation (1.109) must be used to calculate N_a
// From example 1.21     N_b/N_a = -1.069
// Therefore si_a = 1/(1+(N_b/N_a))
si_a = 1/(1+(-1.069));

// From equation 1.100
D_abeff = D_ab*e/t; // [square m/s]

// From equation 1.103
D_Ka = (d/3)*(sqrt(8*R*T)/sqrt(3.14*M_a*10^-3)); // [square m/s]

// Using equation 1.107
D_Kaeff = D_Ka*e/t; // [square m/s]

Y_a = 1+(D_abeff/D_Kaeff); 

// Using equation 1.109 to calculate N_a
N_a = (si_a*P*1.01325*10^5*D_abeff*log((si_a*Y_a-y_a2)/(si_a*Y_a-y_a1)))/(R*T*l);
N_b = -1.069*N_a;
printf("The diffusion fluxes of both components oxygen and nitrogen are %e mole/square m.s and %e mole/square m.s respectively\n",N_a,N_b);