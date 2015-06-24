

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 7 Example # 7.3 ")

//Velocity of air in m/s
Uinfinity = 0.5;
//Length and breadth of square shaped array in m
L = 2.5;
//Surface temperature in degree C
Ts = 70;
//Ambient temperature in degree C
Ta = 20;

//At free stream temperature of air
//Kinematic viscosity in m2/s
nu = 0.0000157;
//Density in kg/m3
rho = 1.16;
//Specific heeat in Ws/kgC
c = 1012;
//Prandtl number
Pr = 0.71;

//Reynolds number
Re = (Uinfinity*L)/nu;

//From equation 7.18
//The average heat transfer coefficient in W/m2C is
//Heat transfer coefficient in W/m2C 
h = (((0.0033*(Pr^(-2/3)))*c)*rho)*Uinfinity;
disp("Heat loss from array in W is")
//Heat loss in W 
q = ((h*L)*L)*(Ts-Ta)
