clc; funcprot(0);
//Example 8.10  Polar Curves

// Initialisation of variables
W = 2000;
S = 180;
V = 120*1.467;
rho = 0.002378;

// Calculations
Cl = 2*(W/S)/(rho*V^2);
Cd = 0.019 ;     //From fig 8.19
LbyD = Cl/Cd;
L = W;         // for level flight lift = weight
D = L/LbyD;
HP = D*V/550;

//Results 
disp(HP,"Horse power required to move the wing forward(hp) :");