////
//Variable Declaration
Ea = 42.e3      //Activation energy for reaction, J/mol
A  = 1.e12      //Pre-exponential factor for reaction, 1/s
T = 298.0       //Temeprature, K
Kc = 1.0e4      //Equilibrium constant for reaction
R = 8.314       //Ideal gas constant, J/(mol.K)
//Calculations
kB = A*exp(-Ea/(R*T))
kA = kB*Kc
kApp = kA + kB

//Results
printf("\n Forward Rate constant is %4.2e 1/s",kA)

printf("\n Backward Rate constant is %4.2e 1/s",kB)

printf("\n Apperent Rate constant is %4.2e 1/s",kApp)

