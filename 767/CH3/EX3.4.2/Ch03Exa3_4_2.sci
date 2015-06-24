// Scilab code Exa 3.4.2 : To determine the number of Rn-222 half lives elapsed when it reaches 99% of its equilibrium concentration : Page no. 133 : (2011)
 D = log(2); // Decay constant, s^-1
 t = log(100); // Half life, s
 n = t/D; // Number of half-lives 
printf("\n Number of half-lives : %4.2f ", n)
// Result
//       Number of half-lives : 6.64