clc; funcprot(0);
//Example 8.11  Absolute Coefficients with metric units

// Initialisation of variables
S = 35;
V = 40;
alpha = 4;
rho = 0.125;

// Calculations
Cl = 0.76;        // Value of Cl from fig 8.10
L = Cl*(rho/2)*S*V^2; 
//Results 
disp(L,"Required Lift (Kg):");