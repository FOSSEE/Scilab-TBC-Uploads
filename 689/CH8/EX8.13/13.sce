clc; funcprot(0);
//Example 8.13 Power in terms of Cd/Cl^3/2

// Initialisation of variables
W = 4000;
S = 300;
Cl = 1.2;
Cd = 0.1;  
rho = 0.002378;
// Calculations
HP = (W/550)*(Cd/Cl^1.5)*sqrt(W/S)/sqrt(rho/2);

//Results 
disp(HP,"Required Horse Power(hp):");