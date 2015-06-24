// Scilab code Exa 5.7.5 : To calculate the  energy of the scattered photon and the energy of recoil electron : P.no. 235 (2011)
h = 6.626e-034; // Value of Planck's constant, J
m_e = 9.11e-031; // Mass of the electron,Kg
c = 3e+08; // Velocity of light, pm/s
A = 180; // Angle between scattered radiation and incident radiation, degree
E_i = 1836; // Energy of the incident electron, KeV
E = 1/E_i + 1/511*(1-cosd(A)); 
E_s = round(1/E); // Energy of the sscattered photon, KeV
E_r = E_i-E_s; // Energy of the recoil electron, KeV
printf("\n Energy of the scattered photon    = %d KeV  \n Energy of the recoil electron    = %d KeV ", E_s, E_r )
// Result
//        Energy of the scattered photon    = 224 KeV  
 //       Energy of the recoil electron    = 1612 KeV 