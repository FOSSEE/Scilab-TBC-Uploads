clc; funcprot(0);
//Example 8.4  Power Required by Wing 

// Initialisation of variables
S = 350;
V = 80;
alpha = 6;
Cd = 0.0452;        // Value of Cd from fig 8.8
rho = 0.002378;

// Calculations
D = Cd*rho/2*S*V^2;
HP = D*V/550;

//Results 
disp(HP,"Horse power required to move the wing forward(hp) :",D,"Drag (lb):");