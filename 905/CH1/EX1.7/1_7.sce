clear;
clc;

// Illustration 1.7
// Page: 22

printf('Illustration 1.7 - Page:22 \n\n');
// Solution

//*****Data*****//
//   A-C3H5Cl    B-air
T = 298; // [K]
P = 1; // [bar]
//*****//

// Values of the Lennard-Jones parameters for allyl chloride must be estimated from equations (1.46) and (1.47).
// From Table 1.2
V_bA = 3*14.8+5*3.7+24.6; // [cubic cm/mole]
// From equation 1.46
sigma_A = 1.18*(V_bA)^(1/3); // [1st Lennard-Jones parameter, Angstrom]
// Normal boiling-point temperature for allyl chloride is Tb = 318.3 K
// From equation 1.47, E/K = 1.15*Tb
T_b = 318.3; // [K]
d_A = 1.15*T_b; // [2nd Lennard-Jones parameter for C3H5Cl  E/K, K]
M_A = 76.5; // [gram/mole]

// Lennard-Jones parameters for air
sigma_B = 3.62; // [Angstrom]
d_B = 97; // [2nd Lennard-Jones parameter for air E/K, K]

M_B = 29; // [gram/mole]

sigma_AB = (sigma_A+sigma_B)/2; // [Angstrom]
d_AB = sqrt(d_A*d_B); // [K]
M_AB = 2/((1/M_A)+(1/M_B)); // [gram/mole]

T_star = T/d_AB;
a = 1.06036; b = 0.15610; c = 0.19300; d = 0.47635; e = 1.03587; f = 1.52996; g = 1.76474; h = 3.89411; 
ohm = ((a/T_star^b)+(c/exp(d*T_star))+(e/exp(f*T_star))+(g/exp(h*T_star)));
 
// Substituting these values into the Wilke-Lee equation yields (equation 1.49)
D_AB = ((10^-3*(3.03-(.98/sqrt(M_AB)))*T^1.5)/(P*(sqrt(M_AB))*(sigma_AB^2)*ohm)); // [square cm/s]
printf("The diffusivity of allyl chloride in air at 298 K and 1 bar is %e square cm/s\n",D_AB);

// The experimental value of D_AB reported by Lugg (1968) is 0.098 square cm/s
D_ABexp = .098; // [square cm/s]
percent_error = ((D_AB-D_ABexp)/D_ABexp)*100; // [%]
printf("The percent error of the estimate, compared to the experimental value is %f ",percent_error);