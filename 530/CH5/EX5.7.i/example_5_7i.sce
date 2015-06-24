clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 5
// Heat Transfer by Forced Convection


// Example 5.7(i)
// Page 241
printf("Example 5.7(i), Page 241 \n \n");

// Given data
D = 0.0125 ; // [m]
ST = 1.5*D ;
SL = 1.5*D ;
V_inf = 2 ; // [m/s]

N = 5;
Tw = 70; // [degree C]
Tmi = 30; // [degree C]
L = 1; // [m]
// Properties of air at 30 degree C
rho = 1.165 ; // [kg/m^3]
v = 16.00 *10^-6 ; // [m^2/s]
Cp = 1.005 ; // [kJ/kg K]
k = 0.0267 ; // [W/m K]
Pr = 0.701;

// From eqn 5.10.2
Vmax = ST/(SL-D)*V_inf ; // [m/s]
Re = Vmax*D/v ;

// From fig 5.15
f = 0.37/4;
// Also, tube arrangement is square
X = 1;
// From eqn 5.10.6
delta_P = 4*f*N*X*(rho*Vmax^2)/2 ; // [N/m^2]

printf("(i) Pressure drop of air across the bank is %f N/m^2 \n",delta_P);