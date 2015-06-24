//Problem 43.04: Two coils, X and Y, having self inductances of 80 mH and 60 mH respectively, are magnetically coupled. Coil X has 200 turns and coil Y has 100 turns. When a current of 4A flows in coil X the change of flux in coil Y is 5 mWb. Determine (a) the mutual inductance between the coils, and (b) the coefficient of coupling.

//initializing the variables:
Lx = 80E-3; // in Henry
Ly = 60E-3; // in Henry
Nx = 200; // turns
Ny = 100; // turns
Ix = 4; // in Amperes
Phiy = 0.005; // in Wb

//calculation:
//mutual inductance, M
M = Ny*Phiy/(2*Ix)
//coupling coefficient,
k = M/(Lx*Ly)^0.5

printf("\n\n Result \n\n")
printf("\n mutual inductance, M is %.2E H",M)
printf("\n coupling coefficient, is %.3f",k)