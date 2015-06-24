// Scilab code Exa. 3.9.4 : To calculate the number of nuclei at t = 0, initial activity and age of Pu-239 which emit alpha particle : Page no. 145 : (2011)
t_h = 24000*365*24*3600; // Half life of Pu-239, s
D_c = 0.6931/t_h; // Decay constant of Pu-239, s^-1
N = 6.023e+023*10/239; // Number of nuclei at t = 0, nuclei 
A_0 = D_c*N; // Initial activity, disintegrations/sec
A = 0.1; // Activity after time t, disintegrations/sec
t = log(A_0/A)*1/D_c; // Age of the Pu-239, years
printf("\nThe number of nuclei at t = 0,  = %4.2e nuclei \nInitial activity  = %4.2e disintegrations/s and \nAge  of Pu-239  = %4.2e years ", N, A_0, t)
// Result
//   The number of nuclei at t = 0,  = 2.52e+022 nuclei 
// Initial activity  = 2.31e+010 disintegrations/s and 
//  Age of Pu-239  = 2.86e+013 years