clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 8
// Condensation and Boiling


// Example 8.2
// Page 321
printf("Example 8.2, Page 321 \n \n");

Ts = 262 ; // [K]
D = 0.022 ; // [m]
Tw = 258 ; // [K]

Tm = (Ts+Tw)/2;
// Properties at Tm
rho = 1324 ; // [kg/m^3]
k = 0.1008 ; // [W/m K]
v = 1.90*10^-7 // [m^2/s];
lambda = 215.1*10^3 ; // [J/kg]
g = 9.81 ; // [m/s^2]
u = v*rho ; // Viscosity

// From eqn 8.4.1
h = 0.725*[lambda*(rho^2)*g*(k^3)/((Ts-Tw)*u*D)]^(1/4);

rate = h*%pi*D*(Ts-Tw) /lambda ; // [kg/s m]
Re = 4*rate/u ;

printf("Heat transfer coefficient = %f W/m^2 K\n",h);
printf("Condensation rate per unit length = %f kg/s m \n",rate);
printf("Film Reynolds number = %f \n",Re);
