clc; funcprot(0);
//Example 10.5 Coefficient for infinite aspect ratio

// Initialisation of variables
slope = 0.09;
alp = 9;
AR = 6;

// Calculations
Cl = alp*slope/(1 + 18.24*slope/AR);

//Results 
disp(Cl,"Lift Coefficient for AR = 6 and alpha = 9 :" );