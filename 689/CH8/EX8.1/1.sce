clc; funcprot(0);
//Example 8.1  Lift Equation

// Initialisation of variables
V = 100*1.467;        // Velocity in ft/s
alpha =4;
S = 250;            //Wing Area.
rho = 0.00237;

// Calculations
Cl = 0.649;            // From figure 8.8
W = Cl*rho/2*S*V^2;

//Results 
disp(W,"Weight with which an airplane can fly with Clark Y wing (lb) :");