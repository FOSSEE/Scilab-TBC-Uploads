clear;
clc;

// Illustration 1.6
// Page: 21

printf('Illustration 1.6 - Page:21 \n\n');
// Solution

//*****Data*****//
//  a-CS2   b-air
T = 273; // [K]
P = 1; // [bar]
// 1 bar = 10^5 Pa
// Values of the Lennard-Jones parameters (sigma and E/K) are obtained from Appendix B:
sigma_a = 4.483; // [1st Lennard-Jones parameter, Angstrom]
sigma_b = 3.620; // [Angstrom]
d_a = 467; // [d = E/K 2nd Lennard-Jones parameter, K]
d_b = 97; // [K]
M_a = 76; // [gram/mole]
M_b = 29; // [gram/mole]
sigma_ab = (sigma_a+sigma_b)/2; // [Angstrom]
d_ab = sqrt(d_a*d_b); // [K]
M_ab = 2/((1/M_a)+(1/M_b)); // [gram/mole]

T_star = T/d_ab;
a = 1.06036; b = 0.15610; c = 0.19300; d = 0.47635; e = 1.03587; f = 1.52996; g = 1.76474; h = 3.89411; 
ohm = ((a/T_star^b)+(c/exp(d*T_star))+(e/exp(f*T_star))+(g/exp(h*T_star)));

// Substituting these values into the Wilke-Lee equation yields (equation 1.49)
D_ab = ((10^-3*(3.03-(.98/sqrt(M_ab)))*T^1.5)/(P*(sqrt(M_ab))*(sigma_ab^2)*ohm)); // [square cm/s]
printf("The diffusivity of carbon disulfide vapor in air at 273 K and 1 bar is %e square cm/s\n",D_ab);

// The experimental value of D_ab obtained from Appendix A:
D_abexp = (.894/(P*10^5))*10^4; // [square cm/s]
percent_error = ((D_ab-D_abexp)/D_abexp)*100; // [%]
printf("The percent error of the estimate, compared to the experimental value is %f ",percent_error);