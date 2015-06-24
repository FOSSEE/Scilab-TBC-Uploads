clc();
clear;
//Given :
M = 32; // Atomic weight in kg/kmole
Na =6.023*10^26 ; // Avogadro constant in atoms/kmole
alpha_e = 3.28*10^-40; // electronic polarisability in farad/m^2
rho = 2.08; //density in gm/cm^3
e0 = 8.85*10^-12 ; // dielectric constant in farad/m
// (er - 1)/(er + 2)  = (N*alpha_e/3*e0)
//1 gm = 1.0*10^-3 kg , 1 cm^3 = 1.0*10^-6 m^3
N = (Na*(rho*10^3))/M; //  atoms/m^3
er =( 2*((N*alpha_e)/(3*e0)) + 1 )/(1 - ((N*alpha_e)/(3*e0)));
printf("Relative dielectric constant = %.2f ",er);


