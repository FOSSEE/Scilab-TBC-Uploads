//Problem 8.07: An electron in a television tube has a charge of 1.6 ð 1019 coulombs and travels at 3 ð 107 m/s perpendicular to a field of flux density 18.5 μT. Determine the force exerted on the electron in the field.

//initializing the variables:
Q = 1.6E-19; // in Coulomb
v = 3E7; // in m/s
B = 18.5E-6; // in Tesla
u0 = 4*%pi*1E-7;

//calculation:
F = Q*v*B

printf("\n\nResult\n\n")
printf("\n Force exerted on the electron in the field. = %.2E N",F)