// Example 6_10
clc;funcprot(0);
// Given data
D=1.0*10^-6;// Diameter of solid particle in m
rho_p=2*10^3;// The density of particle in kg/m^3
rho_f=1.206;// The density of air in kg/m^3
mu=1.80*10^-5;// Viscosity in Pa s
g=9.807;// The acceleration due to gravity in m/s^2

// Calculation
// (a)
V_f=(2*(rho_p-rho_f)*g*D^2)/(9*mu);// The free fall velocity in m/s
// (b)
Re_D=(rho_f*V_f*D)/mu;// The Reynolds number
printf("\n(a)The free fall velocity,V_f=%1.3e m/s \n(b)The Reynolds number,Re_D=%1.3e",V_f,Re_D);
