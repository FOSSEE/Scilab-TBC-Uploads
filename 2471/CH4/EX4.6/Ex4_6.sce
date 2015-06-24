clear ;
clc;
// Example 4.6
printf('Example 4.6\n\n');
printf('Page No. 98\n\n');

// given
v = 1.23;// velocity in m/s
d = 25*10^-3;// diameter in m
p = 980;// density in kg/m^3
u = 0.502*10^-3;// viscosity in Ns/m^2
Cp = 3.76*10^3;// Specific heat capacity in J/kg-K
K = 0.532;// Thermal conductivity in W/m-K

Re = (d*v*p)/u;//Reynolds Number
Pr = (Cp*u)/K;// Prandtl Number
Re_d = (Re)^0.8;
Pr_d = (Pr)^0.4;

// By Dittus-Boelter Equation
//Nu = 0.0232 * Re^0.8 Pr^0.4 = (hd)/K
Nu = 0.0232 * Re_d * Pr_d;// Nusselt Number
h = (Nu*K)/d;//W/m^2-K
printf('The film heat transfer coefficient is %3.2f W/sq.m K\n',h)// Deviation in answer due to direct substitution
