clc;funcprot(0); //Example 6.1

//Initializing the variables 
Pc = 0;         // Atmospheric Pressure
Z3 = 30+2;        //height of nozzle
Ep = 50 ;        //Energy per unit weight supplied by pump
d1 = 0.150;        //Diameter of sump
d2 = 0.100;        //Diameter of delivery pipe
d3 = 0.075 ;        //Diameter of nozzle
g = 9.81;        // Acceleration due to gravity
Z2 = 2;        //Height of pump
rho = 1000;        // Density of water

//Calculations
U3 = sqrt(2*g*(Ep-Z3)/(1+5*(d3/d1)^4 + 12*(d3/d2)^4));
U1 = U3/4;
Pb = rho*g*Z2 + 3*rho*U1^2;
disp(U3, "Velocity of Jet through nozzle (m/s) :");
disp(Pb/1000 , "Pressure in the suction pipe at the inlet to the pump at B(kN/m2) :");