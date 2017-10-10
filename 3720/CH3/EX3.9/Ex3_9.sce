//Example 3_9
clc;clear;funcprot(0);
// Properties
rho=1000; // The density of water in kg/m^3
g=9.81; // The acceleration due to gravity in m/s^2

// Given values
R=0.8;// Radius of solid cylinder in m
h_bottom=5;// m
A=0.8*1;// m^2
s=4.2;
h_c=s+R/2;// m

// Calculation
// (a)
F_x=(rho*g*h_c*A)/1000;//kN
printf('(a)Horizontal force on vertical surface F_x=%0.1f kN\n',F_x);
F_y=(rho*g*h_bottom*A)/1000;// kN
V=(R^2-(%pi*(R^2)/4))*1;// m^3
W=(rho*g*V)/1000;// kN
F_v=F_y-W;// kN 
F_r=sqrt(F_x^2+F_v^2);// kN
theta=atand(F_v/F_x);// degree
printf('The hydrostatic force acting on the cylinder,F_r=%0.1f kN\n',F_r);
printf('The direction of the hydrostatic force acting on the cylindrical surface,theta=%0.1f degree\n',theta);
//(b)
W_cyl=F_r*sind(theta);// kN
printf('(b)The weight of the cylinder per m length,W_cyl=%0.1f kN\n',W_cyl);
