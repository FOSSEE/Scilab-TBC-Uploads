// Scilab code Exa4.3.1: To calculate the cross section of Li(3,7) : Page 179(2011)
t = 10^-5; // Thickness of Li(3,7), m
d = 500; // Density, Kg/m^3
N = 6.023e+026; // Number of  nuclei in 7-Kg of Li-7
M = 7 ; // Molar mass of Li
n = d*N*t/M; // Number of Li(3,7) nuclei/area
N_p = 10^8; // Number of neutron produced/s
N_0 = 10^13; // Number of incident particle striking/unit area of target
C_s = N_p/(N_0*n*10^(-028)); //  Cross section, b
printf("\n Cross section : %5.3f b", C_s)
 // Result 
//  Cross section : 0.232 b 
