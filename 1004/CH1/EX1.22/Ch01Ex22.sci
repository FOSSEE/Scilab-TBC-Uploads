// Scilab Code Ex1.22 Effective mass and speed of electron: Pg: 29 (2008)
c = 3e+08;    // Speed of light, m/s
e = 1.6e-019;    // Electron-volt equivalent of 1 joule, eV/joule
U = 2*1e+06*e;    // Total energy of electron, J
// As E = (m - m0)*c^2, solving for m
m = U/c^2;    // Effective mass of electron, kg
m0 = 0.511*1e+06*e/c^2;    // Rest mass of the electron, kg
// As m = m0/sqrt(1 - (v/c)^2), Relativistic mass of electron, kg, solving for v, we have
v = sqrt(1 - (m0/m)^2)*c;    // Velocity of moving electron, m/s
printf("\nThe effective mass of electron = %4.1e kg", m);
printf("\nThe relativistic speed of electron = %4.2fc m", v/c);
// Result 
// The effective mass of electron = 3.6e-030 kg
// The relativistic speed of electron = 0.97c m 