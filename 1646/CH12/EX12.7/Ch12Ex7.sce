// Scilab Code Ex12.7 : Page-606 (2011)
clc; clear;
mu_o = 4*%pi*1e-07;....// Magnetic permeability of free space, henry/m
n = 1e+29;....// Number density of atoms of iron, per metre cube 
p_m = 1.8e-23;....// Magnetic moment of each atom, ampere-metre square  
k_B = 1.38e-23;....// Boltzmann constant, J/K
B = 0.1;    // Magnetic flux density, weber per metre square
T = 300;....// Absolute room temperature, K
l = 10e-02; // Length of the iron bar, m
a = 1e-04;  // Area of cross-section of the iron bar, metre square
V = l*a;    // Voluem of the iron bar, metre cube
chi = n*p_m^2*mu_o/(3*k_B*T);
printf("\nThe paramagnetic susceptibility of a material = %5.3e", chi);
pm_mean = p_m^2*B/(3*k_B*T); // Mean dipole moment of an iron atom, ampere metre-square
P_m = n*pm_mean;  // Dipole moment of the bar, ampere metre-square
I = n*p_m;  // Magnetization of the bar in one domain, ampere/metre
M = I*V;    // Magnetic moment of the bar, ampere metre-square
printf("\nThe dipole moment of the bar = %5.3e ampere metre-square", P_m);
printf("\nThe magnetization of the bar in one domain = %3.1e ampere/metre", I);
printf("\nThe magnetic moment of the bar = %2d ampere metre-square", M);

// Result
// The paramagnetic susceptibility of a material = 3.278e-03
// The dipole moment of the bar = 2.609e+02 ampere metre-square
// The magnetization of the bar in one domain = 1.8e+06 ampere/metre
// The magnetic moment of the bar = 18 ampere metre-square 
