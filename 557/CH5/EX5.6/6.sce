clc;funcprot(0);
//Example 5.6

//Initializing the variables 
v = 4.9;       //Velocity of Jet
rho = 1000;     // Density of water
d = 0.05;
u = 1.2  ;       // Velocity of tank
//Calculations
Vout = v;
Vin = 0;
m = rho*%pi*d^2*v/4;
R = m*(Vout-Vin);
disp(R,"Reaction (N):");
disp(R*u,"Work done per second (W):"); 