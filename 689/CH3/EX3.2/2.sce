clc; funcprot(0);
//Example 3.2  Equation of states

// Initialisation of variables
T = -10+459.4;
P = 16.38;
P0 = 29.92;
T0 = 518.4;
rho_0 = 0.002378 
g = 32.1740;

// Calculations
rho = P*rho_0*T0/(P0*T);
W =  rho*g;

//Results 
disp(W , "Spwcific gravity of dry air (lb/ft3):");

