//clear//
clear;
clc;

//Example 6.1
//Given
gama = 1.4;
M = 29;
R = 82.0568*10^-3; //[atm-m^3/Kg mol-K]
Nma = 0.8;
gc = 1; //[ft-lb/lbf-s^2]
//At Entrance 
p0 = 20; //[atm]
T0 = 555.6; //[K]

//(a)
// Using Eq.(6.28)
//Pressure at throat
pt  = (1/(1+((gama-1)/2)*Nma^2)^(1/(1-1/gama)))*p0 //[atm]
//From Eq.(6.10)
rho0 = (p0*M)/(R*T0); //[kg/m^3]
// Using Eq.(6.10) and Eq.(6.26), the velocity in the throat
ut = sqrt((2*gama*gc*R*T0)/(M*(gama-1))*(1-(pt/p0)^(1-1/gama))); // [m^3-am/kg]^0.5
//In terms of [m/s], Using Appendix 2, 1 atm = 1.01325*10^ [N/m^2]
ut = ut*sqrt(1.01325*10^5) //[m/s]
//Using Eq.(6.23), density at throat 
rho_t  = rho0*(pt/p0)^(1/gama) //[kg/m^3]
//The mass velocity at the throat,
Gt = ut*rho_t //[kg/m^2-s]
//Using Eq.(6.24), The temperature at throat 
Tt = T0*(pt/p0)^(1-1/gama) // [K]

//(b)
// From Eq.(6.29)
pstar = ((2/(gama+1))^(1/(1-1/gama)))*p0 //[atm]
//From Eq.(6.24) and (6.29)
Tstar = T0*(pstar/p0)^(1-1/gama) //[K]
//From Eq.(6.23)
rho_star = rho0*(pstar/p0)^(1/gama) //[Kg/m^3]
//From Eq.(6.30)
G_star = sqrt(2*gama*gc*rho0*p0*101.325*10^3/(gama-1))*(pstar/p0)^(1/gama)*sqrt(1-(pstar/p0)^(1-1/gama)) //[Kg-m^2/s]
u_star = G_star/rho_star //[m/s]

//(c) 
// By continuity, G inversely proportional to S, the mass velocity at dischage is
G_r  = G_star/2 // [Kg/m^3-s]
//Using Eq.(6.30)
// Let x = pr/p0
err = 1;
eps = 10^-3;
x = rand(1,1);

while(err>eps)  
  xnew  = ((0.1294)/sqrt(1-x^(1-1/1.4)))^1.4;
  err = x-xnew;
  x=xnew;
end

//Using Eq.(6.27)
//The Mach Number at dischage is
Nmr = sqrt((2/(gama-1))*(1/x^(1-1/gama)-1))
