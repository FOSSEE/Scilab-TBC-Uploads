clc; funcprot(0);
//Example 10.3 Correction for aspect ratio of monoplane

// Initialisation of variables
AR6 = 6;
alp6 = 3;
Cl = 0.381;
Cd6 = 0.0170;
AR4 = 4;

// Calculations
alp4 = alp6 - 18.24*Cl*(1/AR6 - 1/AR4);
Cd4 = Cd6 - Cl^2*(1/%pi)*(1/AR6 - 1/AR4);

//Results 
disp(Cd4,"Drag Coefficient at aspect ratio 4 :", alp4,"Angle of attack for aspect ration 4 :" );