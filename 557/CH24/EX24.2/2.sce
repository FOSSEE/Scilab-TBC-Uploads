clc; funcprot(0);
//Example 24.2 

//Initializing the variables
H_friction = 2.4;
H_at = 10.3;
Hs = 1.5;
L =2;
f = 0.01;
d = 0.05;
g = 9.81;
Ds = 0.4; // Diameter of stroke
Db = 0.15;    // Diameter of bore
r = 0.2;

//Calculations
A = %pi*(Db)^2/4;
a = %pi*(Dd)^2/4;
W= sqrt((H_at - Hs -  H_friction )*(2*d*g/(4*f*L)))*(a/A)*(%pi/r);
W_rev = W/(2*%pi)*60;  // maximum rotation speed in rev/min

disp(W_rev-40, "Increase in speed (rev/min):");