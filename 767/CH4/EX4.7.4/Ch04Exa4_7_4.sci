// Scilab code Exa4.7.4: To determine the  power produced by 100 milligram of Cf-252  : Page 191 (2011)
N = 6.023e+023/252*0.1; // Number of nuclei in 100mg of Cf-252
t_h = 2.62*365*24*3600; // Half life of Cf-252, s
D_c = log(2)/t_h; // Decay constant, s^-1
F_r = N*D_c; // Fission rate, fissions/s
E = 210*1.6e-013; // Energy released during fission of one nucleus, J
P = E*F_r; // Power released in fission of 100 milligram of Cf-252, W
printf("\n Power released in fission of 100 milligram of Cf-252: %4.1f W", P)
// Result  
//         Power released in fission of 100 milligram of Cf-252: 67.4 W  
