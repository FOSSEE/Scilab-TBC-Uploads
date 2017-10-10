clc; funcprot(0);
//Example 10.1 Induced Drag

// Initialisation of variables
S = 39;
C = 6;
Cl = 0.8;

// Calculations
AR = S/C;
alpha_i = 18.24*Cl/AR;
Cd_i = Cl^2/(%pi*AR);
 
//Results 
disp(Cd_i,"Induced drag coefficient :", alpha_i, "Induced angle of attack (degree) :");