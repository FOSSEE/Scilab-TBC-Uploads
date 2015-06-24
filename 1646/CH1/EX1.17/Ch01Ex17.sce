// Scilab Code Ex1.17: Page:35 (2011) 
clc;clear;
c = 3e+008;    // Speed of light in vacuum, unit
m0 = 9.1e-031;    // Rest mass of the electron, kg
E_k = 0.1*1e+006*1.6e-019;    // Kinetic energy of the electron, J
v = sqrt(2*E_k/m0);    // Classical speed of the electron, m/s
printf("\nThe classical speed of the electron = %5.3e m/s", v);
// As E_k = (m-m0)*c^2 = (1/sqrt(1-v^2/c^2)-1)*m0*c^2, solving for v
v = c*sqrt(1-(m0*c^2/(E_k+m0*c^2))^2);    // Relativistic speed of the electron, m/s
printf("\nThe relativistic speed of the electron = %5.3e m/s", v);

// Result
// The classical speed of the electron = 1.875e+008 m/s
// The relativistic speed of the electron = 1.644e+008 m/s 