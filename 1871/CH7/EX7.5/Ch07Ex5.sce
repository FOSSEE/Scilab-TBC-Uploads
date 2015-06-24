// Scilab code Ex7.5: Pg:288 (2008)
clc;clear;
m = 3.34e-027;    // Mass of deutron, gm
q = 1.6e-019;    // Charge, coulomb
r = 0.2;    // Radius of the path of deutron, meter
B = 1.5;    // Magnetic field, weber per meter square
v = q*B*r/m;    // velocity of the deutron, m/s
E = 1/2*m*v^2/1.6e-013;    // Energy of the deutron, MeV
printf("\nThe velocity of deutron = %5.3e m/s ", v);
printf("\nThe energy of deutron = %5.3f MeV ", E);

// Result 
// The velocity of deutron = 1.437e+007 m/s 
// The energy of deutron = 2.156 MeV  