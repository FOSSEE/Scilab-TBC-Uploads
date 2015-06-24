// Scilab code Exa 3.4.4 : To calculate the half life of U(92,234): Page no. 134 : (2011)
A_r = 1.8e+04; // Atomic ratio of U(92,238) and U(92,234)
T_238  = 2.5e+05; // Half life of U(92,238), years
T_234 = A_r*T_238; // Half life of U(92,234), years
printf("\n Half life of U(92,234): %3.1e years", T_234)
// Result
//        Half life of U(92,234): 4.5e+009 years