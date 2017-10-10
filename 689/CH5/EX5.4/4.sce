clc; funcprot(0);
//Example 5.4 Inclined Flat Plates   

// Initialisation of variables
Cl = 0.73;     // From Figure
Cd = 0.164;     // From Figure
l = 12;
w = 2;
alpha = 12;
V = 50;
rho = 0.002378;

// Calculations
A = l*w;
L = (Cl*rho*A*V^2)/2;
D = (Cd*rho*A*V^2)/2;
R = sqrt(L^2+D^2);

//Results 
disp(R,"Total Force (lb) :", D ,"Force Parallel to Airstream (lb):",L,"Force Parallel to Airstream (lb):");

