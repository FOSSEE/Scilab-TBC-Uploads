// Scilab code Exa3.2.9 : To calculate the activity of K-40 : Page no. 129 (2011)
N = 6.324e+020; // Number of atoms in 4.2e-05 kg of K-40
t_h = 1.31e+09*31536000; // Half life of K-40, s
D = 0.693/t_h; // Decay constant, s^-1
A = N*D/(3.7e+010)*10^6; // Activity of K-40, microCi
printf("\nThe activity of K-40 : %5.3f micro Ci", A )
//   Result
//    The activity of K-40 : 0.287 micro Ci 


