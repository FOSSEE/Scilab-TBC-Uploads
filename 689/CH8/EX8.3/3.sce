clc; funcprot(0);
//Example 8.3  Lift Equation

// Initialisation of variables
W_by_S = 9;
rho = 0.002378;
alpha = 6 ;
Cl = 0.791;        // Value of Cl from fig 8.8

// Calculations
V = sqrt(W_by_S*2/(rho*Cl));

//Results 
disp(V,"Velocity in ft/sec :");