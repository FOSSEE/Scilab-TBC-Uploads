// Example 7.8
clear all;
clc;

// Using the data and result from Example 7.7
f = 0.583;                                 // Thermal Utilization factor 
L_TM2 = 8.1;                               // Diffusion area of water moderator in cm^2
R = 35;                                    // Radius of the cylinder of the core in cm
a = 0.508;                                 // Radius of control rod in cm
Rc = sqrt(R^2/100);                        // Critical radius in cm
L_T = sqrt((1-f)*L_TM2);                   // Thermal diffusion length in cm
// The points of estimation are chosen as follows
y = a/L_T;
z = Rc/L_T;
// Using the data given in Table V.I for modified Bessel functions
I0_275 = 1.019;                           // I0 at 0.275
I1_275 = 0.1389;                          // I1 at 0.275
I1_189 = 1.435;                           // I1 at 1.89
K0_275 = 1.453;                           // K0 at 0.275
K1_275 = 3.371;                           // K1 at 0.275
K1_189 = 0.1618;                          // K1 at 1.89
E = ((z^2-y^2)/(2*y))*(((I0_275*K1_189)+(K0_275*I1_189))/((I1_189*K1_275)-(K1_189*I1_275)));                                  // The lattice function
// Using the data from Table 5.2 and Table II.3
D_bar = 0.16;                             // Thermal neutron diffusion coefficient in cm
SIGMA_t = 3.443;                          // Total macroscopic cross section in cm^(-1)
d = 2.131*D_bar*(a*SIGMA_t+0.9354)/(a*SIGMA_t+0.5098);  // Extrapolation distance
f_R = 1/((((z^2-y^2)*d)/(2*a))+E);          // Rod utilization parameter
// Calculation
rho_w = f_R/(1-f_R);
// Result
printf(" \n The total worth of the control rods = %.3f or %2.1f percent \n",rho_w,rho_w*100);
// There is a deviation in the value computed on comparison with the value given in the textbook. This is due to approximation of thermal diffusion area in the textbook.



