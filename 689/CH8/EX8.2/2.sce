clc; funcprot(0);
//Example 8.2  Lift Equation

// Initialisation of variables
V = 90*1.467;        // Velocity in ft/s
S = 300;            //Wing Area.
rho = 0.00237;
W = 3000;

// Calculations
Cl = W*2/(rho*S*V^2);            // From figure 8.8

//Results 
disp("Corrosponding value of alpha for the above Lift Coefficient is 1.7 degree (from fig 8.8).",Cl,"Lift Coefficient for the above data is :");
