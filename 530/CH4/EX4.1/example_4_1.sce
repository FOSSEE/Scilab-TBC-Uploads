clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 4
// Principles of Fluid Flow

// Example 4.1
// Page 172
printf("Example 4.1, Page 172 \n\n");

L = 3 ; // Length, [m] 
D = 0.01 ; // ID, [m]
V = 0.2 ; // Average Velocity, [m/s]

// From Table A.1 at 10 degree C
rho=999.7 ; // [kg/m^3]
v=1.306 * 10^-6 ; // [m^2/s]

Re_D=0.2*0.01/(1.306*10^-6) ;

// this value is less than the transition Reynolds  number 2300.
// Hence flow is laminar. From eqn 4.4.19
f = 16/Re_D;

// from eqn 4.4.17
delta_p = 4*f*(L/D)*(rho*V^2)/2;

// since flow is laminar
V_max = 2*V;

printf("Pressure drop is %f Pa \n",delta_p);
printf(" Maximum velocity is %f m/s",V_max);
