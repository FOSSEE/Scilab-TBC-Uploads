//clear//
clear;
clc;

// Example 8_2
// Given
pa = 29; //[in.Hg]
pb = 30.1; //[in.Hg]
va = 0; //[ft/s]
vb = 150; //[ft/s]
Ta = 200; //[F]
vdot = 10000; //[ft^3/min]
neta = 0.65;
M = 31.3;
R = 29.92;
gc = 32.17;//[ft-lb/lbf-s^2]
//actual suction density
rho_a = M*pa*(460+60)/(378.7*30*(460+Ta)); //[lb/ft^3]
//acual discharge density
rho_b = rho_a*pb/pa; //[lb/ft^3]
// average density of the flowing gas
rho = (rho_a+rho_b)/2; //[lb/ft^3]
//mass flow rate
mdot  = vdot*M/(378.7*60) //[lb/s]
//developed pressure
dev_p = (pb-pa)*144*14.7/(R*rho); //[ft-lbf/lb]
//velocity head
vel_head = vb^2/(2*gc); //[ft-lbf/lb]
//Using Eq.(8.1), alpha_a = alpha_b = 1,va = 0, Za = Zb,
Wp = (dev_p+vel_head)/neta  // [ft-lbf/lb]
//Using Eq.(8.4)
Pb  = mdot*Wp/550 //[hp] 
