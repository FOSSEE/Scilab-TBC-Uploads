// Scilab code Exa3.2.8 To calculate the activity  and weight of radioactive material : Page 128 (2011)
N_o = 7.721e+018; // Number of atoms in 3 mg of U-234
t_h = 2.5e+05; // Half life of U-234, years
T = 150000; // Total time, years
lambda = 0.6931/t_h; // Decay constant, year^-1
N = N_o*(%e^-(lambda*T)); // Number of atoms left after T years
m = 234000; // Mass of 6.023e+023 atoms of U-234, mg
M = m*N/(6.023e+023); // Weight of sample left after t years, 
L = 8.8e-014; // Given decay constant, S^-1
A = N*L*10^6/(3.7e+010); // Activity, micro Ci
printf("\nThe weight of sample  =  %5.3f mg  \n Activity   =  %5.2f micro Ci ", M, A)
//   Result
//     The weight of sample  =  1.979 mg  
//      Activity   =  12.12 micro Ci 
  

 