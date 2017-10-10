////
//Variable Declaration
R = 8.314         //Ideal Gas Constant, J/(mol.K)
T = 298           //Temperature of Gas, K
M = 0.040         //Molecular wt of Ar, kg/mol
P0 = 1013.25      //Pressure, N/m2
NA = 6.022e23     //Number of particles per mol
V = 1.0           //Volume of Container, L
k = 1.38e-23      //Boltzmann constant, J/K
t = 3600          //time of effusion, s
A = 0.01          //Area, um2

//Calculations
A = A*1e-12
V = V*1e-3
expo = (A*t/V)*(k*T/(2*%pi*M/NA))
P = P0*exp(-expo)
//Results
printf("\n Pressure after 1 hr of effusion is %4.3e Pa",P/101325)

