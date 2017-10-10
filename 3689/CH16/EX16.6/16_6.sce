////
//Variable Declaration
R = 8.314         //Ideal Gas Constant, J/(mol.K)
T = 298           //Temperature of Gas, K
M = 0.044         //Molecular wt of CO2, kg/mol
P  = 101325       //Pressure, N/m2
NA = 6.022e23     //Number of particles per mol
sigm = 5.2e-19    //m2

//Calculations
zCO2 = (P*NA/(R*T))*sigm*sqrt(2)*sqrt(8*R*T/(%pi*M)) 
//Results
printf("\n Single particle collisional frequency is %4.1e per s",zCO2)

