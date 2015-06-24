clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.7(b)
// Page 366
printf("Example 9.7(b), Page 366 \n \n");

D = 0.04 ; // [m]
V = 1.9 ; // [m/s]

// (b) mess transfer correlation equivalent to the Gleilinski equation

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

// From Blasius equation 4.6.4a
f = 0.079*Re^(-0.25);

// Substituting in eqn 9.6.7
Sh_D = [(f/2)*(Re-1000)*Sc]/[1+12.7*((f/2))*((Sc^(2/3))-1)];
h_m1 = Sh_D*Dab/D;

printf("(b) h_m = %f \n",h_m1);