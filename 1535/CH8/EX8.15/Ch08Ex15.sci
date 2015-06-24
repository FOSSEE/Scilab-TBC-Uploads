// Scilab Code Ex8.15: Page-177 (2010)
e = 1.6e-019;    // Electronic charge, C = Energy equivalent of 1 eV, J/eV
m0 = 9.11e-031;    // Rest mass of electron, kg
c = 3e+008;    // Speed of light in vacuum, m/s
u1 = 0.98*c;    // Inital speed of electron, m/s
u2 = 0.99*c;    // Final speed of electron, m/s
m1 = m0/sqrt(1-(u1/c)^2);    // Initial relativistic mass of electron, kg
m2 = m0/sqrt(1-(u2/c)^2);    // Final relativistic mass of electron, kg
dm = m2 - m1;    // Change in relativistic mass of the electron, kg
W = dm*c^2;    // Work done on the electron to change its velocity, J
// As W = eV, V = accelerating potential, solving for V
V = W/e;    // Accelerating potential, volt
printf("\nThe change in relativistic mass of the electron = %4.1e kg", dm);
printf("\nThe work done on the electron to change its velocity = %4.2f MeV", W/(e*1e+006));
printf("\nThe accelerating potential = %4.2e volt", V);

// Result
// The change in relativistic mass of the electron = 1.9e-030 kg
// The work done on the electron to change its velocity = 1.06 MeV
// The accelerating potential = 1.06e+006 volt