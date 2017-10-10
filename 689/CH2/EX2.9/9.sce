//Example 2.9  Flow around a circular cylinder

// Initialisation of variables
P0 = 2116.2;
U = 100;
rho = 0.002378;
theta = 15;

// Calculations
P = P0 + rho*U^2*(1 - 4*sind(theta)^2)/2;

//Results 
disp(P,"Pressure at a point on the surface of cylinder (lb/sq-ft)");

