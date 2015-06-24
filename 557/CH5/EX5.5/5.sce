clc;funcprot(0);
//Example 5.5

//Initializing the variables 
rho = 850 ;    // Density of liquid
a = 0.02   ;     //Acceleration of fluid
x = 45 ;
d1 = .5 ;
d2 = .25;
p1 = 40*10^3;
p2 = 23*10^3;
Q = .45;
 
//Calculations
A1 = (%pi*d1^2)/4;
A2 = (%pi*d2^2)/4;
v1 = Q/A1;
v2 = Q/A2;

Rx = p1*A1 - p2*A2*cosd(x) - rho*Q*(v2*cosd(x)-v1);
Ry = p2*A2*sind(x) + rho*Q*v2*sind(x);

disp(sqrt(Rx^2 +Ry^2)/1000, "Resultant force on the bend(kN):");
disp(atand(Ry/Rx),"Inclination of Resultant Force with x-direction(Degree) :");