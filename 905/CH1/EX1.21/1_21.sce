clear;
clc;

// Illustration 1.21
// Page: 60

printf('Illustration 1.21 - Page:60 \n\n');
// Solution

//*****Data*****//
//   a-oxygen   b-nitrogen
T = 293; // [K]
P = 0.1; // [atm]
d = 0.1*10^-6; // [m]
e = 0.305; // [porosity]
t = 4.39; // [tortuosity]
k = 1.3806*10^-23; // [J/K]
l = 2*10^-3; // [m]
R = 8.314; // [cubic m.Pa/mole.K]
x_a1 = 0.8;
x_a2 = 0.2;
M_a = 32; // [gram/mole]
M_b = 28; // [gram/mole]
//*****//

// Using data from Appendix B for oxygen and nitrogen, and equation (1.45)
sigma_a = 3.467; // [Angstrom]
sigma_b = 3.798; // [Angstrom]
sigma_AB = ((sigma_a+sigma_b)/2)*10^-10; // [m]

lambda = k*T/(sqrt(2)*3.14*(sigma_AB^2)*P*1.01325*10^5); // [m]
// From equation 1.101
K_n = lambda/d;
printf("The value of a dimensionless ratio, Knudsen number is %f\n\n",K_n);
// If K_n is greater than 0.05 then transport inside the pores is mainly by Knudsen diffusion
// Using equation 1.103
D_Ka = (d/3)*(sqrt(8*R*T)/sqrt(3.14*M_a*10^-3)); // [square m/s]

// Using equation 1.107
D_Kaeff = D_Ka*e/t; // [square m/s]

p_a1 = (x_a1*P)*1.01325*10^5; // [Pa]
p_a2 = (x_a2*P)*1.01325*10^5; // [Pa]

// Using equation 1.108
N_a = D_Kaeff*(p_a1-p_a2)/(R*T*l); // [mole/square m.s]
// Now using the Graham’s law of effusion for Knudsen diffusion
// N_b/N_a = -sqrt(M_a/M_b) ,therefore
N_b = -N_a*sqrt(M_a/M_b); // [mole/square m.s]

printf("The diffusion fluxes of both components oxygen and nitrogen are %e mole/square m.s and %e mole/square m.s respectively\n",N_a,N_b);
