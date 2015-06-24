clc; funcprot(0);//Example 12.1 

//Initializing the variables
x =35;
T = 50;
m = 1;
g =9.81;
rho = 1.2;
A = 1.2;
U0 = 40*1000/3600; // Velocity in m/s

//Calculations
L = T*sind(x)+m*g;
D =T*cosd(x);
Cl = 2*L/(rho*U0^2*A);
Cd = 2*D/(rho*U0^2*A); 
disp(Cd,"Drag Coefficient :",Cl,"Lift Coefficient :");