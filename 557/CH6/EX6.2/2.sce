clc;funcprot(0); //Example 6.2

//Initializing the variables 
x = 45;         // Inclination of pipe
l = 2;        //Length of pipe under consideration
Ep = 50 ;        //Energy per unit weight supplied by pump
d1 = 0.2;        //Diameter of sump
d2 = 0.1;        //Diameter of delivery pipe
g = 9.81;        // Acceleration due to gravity
rho = 1000;        // Density of water
V1 = 2;
RD_oil = 0.9;        // relative density of oil
RD_Merc = 13.6;        // Relative density of Mercury

//Calculations
V2 = V1*(d1/d2)^2;
dZ = l*sind(x);
rho_Oil = RD_oil*rho;
rho_Man = RD_Merc*rho;
dP = 0.5*rho_Oil*(V2^2-V1^2) + rho_Oil*g*dZ;
h = rho_Oil *( dP/(rho_Oil*g)- dZ)/(rho_Man - rho_Oil);

disp(h, "Difference in the level of mercury (m):",dP, "Pressure Difference(N/m2) : ");
