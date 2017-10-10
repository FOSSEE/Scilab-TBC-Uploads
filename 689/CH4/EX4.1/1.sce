clc; funcprot(0);
//Example 4.1  Standard Pressure at Altitude Below 35332 Feet 

// Initialisation of variables
Z = 18000;
a = 0.003566;
P0 = 29.92;
T0 = 518.4;
R = 53.33;
rho_0 = 0.002378;

// Calculations
T = T0 - a*Z;
P = P0*(T/T0)^(1/a/R);
rho = rho_0*P*T0/(P0*T);

//Results 
disp(rho,"Density (slug per cu ft):",P,"Pressure (inch Hg):", T-459.4, "Temperature (Degree Farenheit):", "!---At an altitude of 18000 ft in standard altitude ---! ");

