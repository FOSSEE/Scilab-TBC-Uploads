clc; funcprot(0);
//Example 8.5  Flying Level at Altitude 

// Initialisation of variables
W = 4000;
S = 350;
V = 100*1.467;
rho = 0.002378;

// Calculations
Cl = 2*(W/S)/(rho*V^2);
alpha = 1.5;     // From fig 8.15
Cd = 0.0217;        // From fig 8.15
D = Cd*(rho/2)*S*V^2;
HP = D*V/550;

// At 10000 ft altitude density is lower as compared to the density at sea level.
rhoX = 0.001756;
Cl = 2*(W/S)/(rhoX*V^2);
alpha = 3.5;     // From fig 8.15
Cd = 0.0308;        // From fig 8.15
D1 =  Cd*(rhoX/2)*S*V^2;
HP1 = D1*V/550;

//Results 
disp(HP1,"Horse power required to move the wing forward(hp) :",D1,"Drag (lb):","!------Part (b)------!",HP,"Horse power required to move the wing forward(hp) :",D,"Drag (lb):","!------Part (a)------!");