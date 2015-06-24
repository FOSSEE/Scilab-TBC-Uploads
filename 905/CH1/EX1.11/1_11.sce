clear;
clc;

// Illustration 1.11
// Page: 33

printf('Illustration 1.11 - Page:33 \n\n');
// Solution

//*****Data*****//
//  ammonia-1  nitrogen-2   hydrogen-3
T = 300; // [K]
P = 1; // [bar]
y_1 = .40;
y_2 = .20;
y_3 = .40;
//*****//

// Lennard-Jones parameter for ammonia
sigma_1 = 2.9; // [Angstrom]
d_1 = 558.3; // [E/K, K]
M_1 = 17; // [gram/mole]

// Lennard-Jones parameter for nitrogen
sigma_2 = 3.798; // [Angstrom]
d_2 = 71.4; // [E/K, K]
M_2 = 28; // [gram/mole]

// Lennard-Jones parameter for hydrogen 
sigma_3 = 2.827; // [Angstrom]
d_3 = 59.7; // [E/K, K]
M_3 = 2; // [gram/mole]

// Binary diffusivitiy of ammonia in nitrogen (D_12)

sigma_12 = (sigma_1+sigma_2)/2; // [Angstrom]
d_12 = sqrt(d_1*d_2); // [K]
M_12 = 2/((1/M_1)+(1/M_2)); // [gram/mole]

T_star12 = T/d_12;
a = 1.06036; b = 0.15610; c = 0.19300; d = 0.47635; e = 1.03587; f = 1.52996; g = 1.76474; h = 3.89411; 
ohm12 = ((a/T_star12^b)+(c/exp(d*T_star12))+(e/exp(f*T_star12))+(g/exp(h*T_star12)));
 
// Substituting these values into the Wilke-Lee equation yields (equation 1.49)
D_12 = ((10^-3*(3.03-(.98/sqrt(M_12)))*T^1.5)/(P*(sqrt(M_12))*(sigma_12^2)*ohm12)); // [square cm/s]
printf("The diffusivitiy of ammonia in nitrogen %e square cm/s\n",D_12);

// Binary diffusivitiy of ammonia in hydrogen (D_13)

sigma_13 = (sigma_1+sigma_3)/2; // [Angstrom]
d_13 = sqrt(d_1*d_3); // [K]
M_13 = 2/((1/M_1)+(1/M_3)); // [gram/mole]

T_star13 = T/d_13;
a = 1.06036; b = 0.15610; c = 0.19300; d = 0.47635; e = 1.03587; f = 1.52996; g = 1.76474; h = 3.89411; 
ohm13 = ((a/T_star13^b)+(c/exp(d*T_star13))+(e/exp(f*T_star13))+(g/exp(h*T_star13)));
 
// Substituting these values into the Wilke-Lee equation yields (equation 1.49)
D_13 = ((10^-3*(3.03-(.98/sqrt(M_13)))*T^1.5)/(P*(sqrt(M_13))*(sigma_13^2)*ohm13)); // [square cm/s]
printf("The diffusivitiy of ammonia in hydrogen %e square cm/s\n",D_13);

// Figure 1.5 shows the flux of ammonia (N_1) toward the catalyst surface, where 
// it is consumed by chemical reaction, and the fluxes of nitrogen (N_2) and hydrogen (N_3)
// produced by the reaction migrating away from the same surface.

// Therefore N_1 = N_2+N_3 
// From equation 1.59
// N_2 = -(0.5)*N_1    and    N_3 = -(1.5)*N_1

// Substituting in equation (1.58) we obtain
D_1eff = (1+y_1)/((y_2+0.5*y_1)/D_12 + (y_3+1.5*y_1)/D_13); // [square cm/s]
printf("The effective diffusivity of ammonia in the gaseous mixture is  %e square cm/s",D_1eff);  