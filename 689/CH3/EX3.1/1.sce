clc; funcprot(0);
//Example 3.1 Equation of states

// Initialisation of variables
T = 45+459.4;
P = 25.93;
P0 = 29.92;
T0 = 518.4;
rho_0 = 0.002378 

// Calculations
rho = P*rho_0*T0/(P0*T);

//Results 
disp(rho , "Density of dry air when pressure is 25.93 inch (pound/inch3):");

