// Scilab code Exa3.2.7 : To calculate the mass of Ra-226 :Page no. 127 (2011)
t_h  = 1620*31536000; // Half life of Ra-226, S
D = 0.6931/t_h; // Decay constant, S^-1
A_Ci = 3.7e+010; // Activity, Ci
N_Ci = A_Ci/D; // Number of atoms decayed
m = 0.226; // Mass of 6.023e+023 atoms, kg
M_Ci = m*N_Ci/6.023e+023; // Mass of 1-Ci sample of Ra-226, kg
A_rf = 10^6; // Activity, Rf
N_rf = A_rf/D; // Number of atoms decayed
M_rf = m*N_rf/6.023e+023; // Mass of 1-Rf sample of Ra-226, kg
printf("\n Mass of 1-Ci sample of Ra-226   = %5.3e kg and \n Mass of 1-Rf sample of Ra-226  =  %4.2e kg ",M_Ci, M_rf )
//   Result
// Mass of 1-Ci sample of Ra-226   = 1.023e-003 kg and 
// Mass of 1-Rf sample of Ra-226  =  2.77e-008 kg

