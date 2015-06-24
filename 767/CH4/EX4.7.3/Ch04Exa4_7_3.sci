// Scilab code Exa4.7.3: To determine the fission power produced by one microgram of Fm-256  : Page 190 (2011)
N = 6.023e+023/256*10^-6; // Number of nuclei in 1ug of Fm-256
t_h = 158*60; // Half life of Fm-256, s
D_c = log(2)/t_h; // Decay constant, s^-1
F_r = N*D_c; // Fission rate, fissions/s
E = 220*1.6e-013; // Energy released during fission of one nucleus, J
P = E*F_r; // Power released in fission of 1 microgram of Fm-256, W
printf("\n Power released in fission of 1 microgram of Fm-256 = %d W", P)
// Result  
//          Power released in fission of 1 microgram of Fm-256 = 6 W 
