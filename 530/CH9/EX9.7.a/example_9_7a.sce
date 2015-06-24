clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.7(a)
// Page 366
printf("Example 9.7(a), Page 366 \n \n");

D = 0.04 ; // [m]
V = 1.9 ; // [m/s]

// (a) Colburn anology and Gnielinski equation
// Properties of air at 27 degree C
v = 15.718*10^-6 ; // [m^2/s]
rho = 1.177 ; // [kg/m^3]
Pr = 0.7015 ;
Cp = 1005 ; // [J/kg K]
k = 0.02646 ; // [W/m K]
// From Table 9.2
Dab = 2.54 * 10^-5 ; // [m^2/s]
Sc = v/Dab ;
Re = V*D/v;
// The flow is turbulent and eqn 9.6.5 may be applied
// let r = h/h_m 
r = rho*Cp*((Sc/Pr)^(2/3));
// From Blasius equation 4.6.4a
f = 0.079*Re^(-0.25);
// Substituting this value into Gnielinski equation 5.3.2
Nu = [(f/2)*(Re-1000)*Pr]/[1+12.7*((f/2)^(1/2))*((Pr^(2/3))-1)];
h = Nu*k/D;
h_m = h/r; // [m/s]

printf("h_m using Colburn anology and Gnielinski equation = %f \n",h_m);