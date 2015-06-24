//clear//
clear;
clc;

//Example 7.2
//Given
g = 32.174; //[ft-lb/lbf-s^2]
eps = 0.8;
speg_s = 4.0;
speg_c = 1.594;
Ds  = 0.004; //[in.]
rho_w = 62.37; //[lbf/ft^3]
delta_speg = speg_s-speg_c;
delta_rho = rho_w*delta_speg; //[lbf/ft^3]
rho_c = rho_w*speg_c; //[lbf/ft^3]
//From Appendix 9
mu = 1.03; //[cP]
//Using Eq.(7.45)
K = Ds/12*(g*rho_c*(delta_rho)/(mu*6.72*10^-4)^2)^(1/3);
//Using Eq.(7.40)
ut = g*(Ds/12)^2*delta_rho/(18*mu*6.72*10^-4) //[ft/s]

//The terminal velocity in hindered settling
//Calculating Reynolds Number
Nre = ut*rho_c*Ds/(12*mu*6.72*10^-4);
//From Fig.(7.7)
n = 4.1;
//Using Eq.(7.46)
us  = ut*eps^n //[ft/s]
