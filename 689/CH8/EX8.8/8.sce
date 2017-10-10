clc; funcprot(0);
//Example 8.8  Polar Curves 

// Initialisation of variables
W = 3000;
S = 350;
V = 90;
rho = 0.002378;

// Calculations
Cl = 2*W/(S*V^2);
Cd = 0.0561; //From figure 8.18
HP = Cd*rho*S*V^3/(2*550);
 
//Results 
disp(HP,"Horse power required by wing (hp) : ");