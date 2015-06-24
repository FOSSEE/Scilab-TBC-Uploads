clear;
clc;

// Example: 1.9
// Page: 11

// Solution

printf("Example: 1.9 - Page: 11\n\n");

//*****Data*****//
m = 15; // [kg]
g = 9.81;// [m/square s]
V1 = 0;// [m/square s]
Z1 = 12;// [m]
Z2 = 0;// [m]
//***************//

// At initial condition, V1 = 0, so kinetic energy is zero.
// At final condition, Z2 = 0, so potential energy is zero.
// Ep1 + Ek1 = Ep2 + Ek2
deff('[y] = f(V2)','y = ((1/2)*m*V1^2) + (m*g*Z1) - (((1/2)*m*V2^2) + (m*g*Z2))');
V2 = fsolve(7,f);

printf("The velocity of the metal block is %.2f m/s\n",V2);

Ek2 = (1/2)*m*V2^2;// [J]
printf("The final Kinetic Energy is %.1f J\n",Ek2);