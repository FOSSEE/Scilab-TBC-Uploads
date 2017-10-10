clc; funcprot(0);
//Example 3.7 Similar Flows

// Initialisation of variables
c =  3/12;    //chord length in feet
V = 100*1.467;     // velocity in ft/sec
R = 0.002378;
mu = 0.000000373;

// Calculations
RN = rho*V*c/mu;
//Results 
disp(RN , "Reynolds no:");

