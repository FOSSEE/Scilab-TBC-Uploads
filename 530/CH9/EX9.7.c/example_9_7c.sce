clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 9
// Mass Transfer


// Example 9.7(c)
// Page 366
printf("Example 9.7(c), Page 366 \n \n");

D = 0.04 ; // [m]
V = 1.9 ; // [m/s]

// (c) To show that mass flux of water is very small compared to the mass flux of air flowing in the pipe
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

// From steam table
rho_aw = 1/38.77 ; // [kg/m^3]
// let X = (m_a/A)_max
X = f*rho_aw; // [kg/m^2 s]

// let Y = mass flux of air in pipe = (m/A)
Y = rho*V ; // [kg/m^2 s]
ratio = X/Y ;
percent = ratio*100;

printf("(c) (m_a/A)_max/(m_a/A) = %f percent Thus, mass flux of water is very small compared to the mass flux of air flowing in the pipe. ",percent );