// Scilab code Exa 3.4.3 : To calculate the  decay constant for alpha and beta decays : Page no. 133 : (2011)
 H_t = 60.5*60; // Total half life period, s
 T_d = 0.693/H_t; // Total decay constant, s^-1
 A_d = 34/100*T_d; // Decay constant for alpha decays, s^-1
 B_d = 66/100*T_d; // Decay constant for beta decay, s^-1
printf("\n Alpha decay   =  %4.2e s^-1    \n Beta decay    = %4.2e s^-1", A_d, B_d)
// Result
//       Alpha decay   =  6.49e-005 s^-1    
//       Beta decay    = 1.26e-004 s^-1 