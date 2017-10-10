////
//Variable Declaration
R = 8.314         //Ideal Gas Constant, J/(mol.K)
T = 298           //Temperature of Gas, K
M = 0.040         //Molecular wt of Ar, kg/mol
P = 101325        //Pressure, N/m2
NA = 6.022e23     //Number of particles per mol
V = 1.0           //Volume of Container, L

//Calculations
Zc = P*NA/sqrt(2*%pi*R*T*M)
Nc = Zc
//Results
printf("\n Number of Collisions %4.2e  per s",Nc)

