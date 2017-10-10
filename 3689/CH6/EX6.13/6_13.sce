////
//Variable Declaration
dGfCG  = 0.0            //Std. Gibbs energy of formation for CaCO3 (s), kJ/mol
dGfCD = 2.90            //Std. Gibbs energy of formation for CaO (s), kJ/mol
rhoG = 2.25e3           //Density of Graphite, kg/m3
rhoD = 3.52e3           //Density of dimond, kg/m3
T0 = 298.15             //Std. Temperature, K
R = 8.314               //Ideal gas constant, J/(mol.K) 
P0 = 1.0                //Pressure, bar
M = 12.01               //Molceular wt of Carbon
//Calculations
P = P0*1e5 + dGfCD*1e3/((1./rhoG-1./rhoD)*M*1e-3)

//Results 
printf("\n Pressure at which graphite and dimond will be in equilibrium is %4.2e bar",P/1e5)

