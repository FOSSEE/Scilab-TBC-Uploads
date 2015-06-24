// Example 10.5
clear all;
clc;

// Given data
fission_density = 4*10^7;                       // Fission density in fissions/cm^2-sec
// 1 inches = 2.54 cm
d = 28*2.54;                                    // Diamaeter of plate in cm
R = d/2;                                        // Radius of plate in cm
v = 2.42;                                       // Number of fission neutrons emitted per fission
x = 75;                                         // Distance of point from center of plate in cm
// Using the data from Table 10.4 for removal macroscopic cross section of water
sigma_RW = 0.103;                               // Removal macroscopic cross section of water in cm^-1
S = v*fission_density;                          // Strength of neutron source in terms of neutrons/cm^2-sec
A = 0.12;                                       // A constant
// From Figure 10.19
tan_theta = R/x;
theta = atan(R/x);
sec_theta = sec(theta);

// 1.
x11 = sigma_RW*x;                               // Exponential integral function
x21 = sigma_RW*x*sec_theta;                     // Exponential integral function
// Let the upper limit of integral be 20
x_limit = 20;
function y=f(x),y=exp(-x)/x,endfunction
 E1_x11 = intg(x11,x_limit,f);
 E1_x21 = intg(x21,x_limit,f);
// Calculation
phi_1 = S*A/2*(E1_x11-E1_x21);
// Result
printf(" \n The fast flux without iron shield = %d neutrons/cm^2-sec \n",phi_1);

// 2. Iron slab is inserted in front of the fission plate
// Using the data from Table 10.4 for removal macroscopic cross section of iron
sigma_R = 0.168;                               // Removal macroscopic cross section of iron in cm^-1
t = 3*2.54;                                     // Thickness of iron slab in cm
// Now the analysis is similar to multi layered shielding
x12 = sigma_RW*x+sigma_R*t;                     // Exponential integral function
x22 = sigma_RW*x*sec_theta+sigma_R*t*sec_theta; // Exponential integral function
// Let the upper limit of integral be 20
x_limit = 20;
function y=f(x),y=exp(-x)/x,endfunction
 E1_x12 = intg(x12,x_limit,f);
 E1_x22 = intg(x22,x_limit,f);
// Calculation
phi_2 = S*A/2*(E1_x12-E1_x22);
// Result
printf(" \n The fast flux with iron shield = %.1f neutrons/cm^2-sec \n",phi_2);
