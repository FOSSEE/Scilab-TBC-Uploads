clc;funcprot(0);//Example 5.10

//Initializing the variables 
rho = 1000;     // Density of water
Q = 10;        //Acceleration of fluid
r2 = 1.6;
r1 = 1.2;
V1 = 2.3;
V2 = 0.2;
rot = 240; 

//Calculations
Tf = rho*Q*(V2*r2 - V1*r1);
T = -Tf;
n = rot / 60;
P = 2*%pi*n*T;

disp(T, "Torque exerted (N- m):");
disp(P/1000, "Theoretical power output (kW) :"); 