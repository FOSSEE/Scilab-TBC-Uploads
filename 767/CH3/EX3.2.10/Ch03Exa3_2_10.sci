// Scilab code Exa3.2.10 : To calculate the power produced by 10 mg of Po-210  : Page no. 130 (2011)
N = 2.87e+019; // Number of atoms in 10e-10kg of Po-210
t_h = 138*24*3600; // Half life of Po-210, s
D = 0.693/t_h; // Decay constant, s^-1
A = N*D; // Activity of K-40, dps
E = 5.3*1.6e-013; // Power produce by one dps, MeV
P = A*E; // Power produced by 1.667e+012 dps, W
printf("\nThe Power produced by 1.667e+012 dps : %3.1f W", P)
//   Result
//   The Power produced by 1.667e+012 dps : 1.4 W 