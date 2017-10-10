// Implementation of example 5.3
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//diameter of pipe 'd', heat loss from the pipe 'Q'
d = 0.2; //m
//parameters with subscript 1 refer to at boiler's end
//and those with subscript 2 refer to at turbine end
p1 = 4; //MPa
t1 = 400; //degree C
h1 = 3213.6; //kJ/kg
v1 = 0.073; //m^3/kg
p2 = 3.5; //MPa
t2 = 392; //degree C
h2 = 3202.6; //kJ/kg
v2 = 0.084; //m^3/kg
Q = -8.5; //dQ/dm in kJ/kg
//dW/dm = 0
//V = V2^2 - V1^2;
V = 2*((h1-h2) + Q)/10^(-3);
//Velocity at turbine end 'V1'
V1 = sqrt(V/((v2/v1)^2-1));
//Area of cross-ection of pipeline 'A'
A = (%pi)/4 * d^2;
//stream flow rate 'w'
w = A * V1/v1;
printf("Mass flow rate, w = %0.1f kg/s",w);
// end