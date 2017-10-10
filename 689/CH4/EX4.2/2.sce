clc; funcprot(0);
//Example 4.2  Standard Pressure at Altitude After 35332 Feet 

// Initialisation of variables
P0 = 6.925;
Z = 40000;
R = 53.33;
Z0 = 35332;
T = 392.4;
rho_0 = 0.002378;
P0_SL = 29.92; // Pressure at sea level

// Calculations
P = P0*%e^((-Z+Z0)/(R*T));
rho = rho_0 *P*T0/(P0_SL*T);

//Results 
disp(rho,"Density (slug per cu ft):",P,"Pressure (inch Hg):", "!---At an altitude of 40000 ft in standard altitude ---! ");

