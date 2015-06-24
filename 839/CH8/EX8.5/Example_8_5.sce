//clear//
clear;
clc;

//Example 8.5
//Given
T = 100; //[F]
mu_O = 5.45; //[cP]
spg_O =  0.8927;
spg_m = 13.6;
spg_gl = 1.11;
q = 12000; //[bbl/d]
rho_ratio = 0.984;
rho_w = 62.37; //[lb/ft^3]
h = 30; //[in.]
gc = 32.174; //[ft-lb/lbf-s^2]
//(a)
//Using Eq.(8.42)
rhoB_60 = spg_O*rho_w; //[lb/ft^3]
rho_100 = spg_O*rho_w*rho_ratio; //[lb/ft^3]
mdot = q*42*rhoB_60/(24*3600*7.48); // [lb/s] 
Da = 4.026/12; //[ft]
delta_p = h/12*(spg_m-spg_gl)*rho_w*(1); //[lbf/ft^2]
//Using Eq.(8.42)
beeta = sqrt(4*mdot/(0.61*%pi*Da^2*sqrt(2*gc*delta_p*rho_100)));
Do = Da*beeta; //[ft]
// the orifice diameter 
D = 12*Do //[in.]

//(b)
//Using Fig. 8.20, the fraction of differential pressure loss is 
fra_prss_loss  = 0.68; 
//Maximum power consumption
P = mdot*delta_p*fra_prss_loss/(rho_ratio*rho_w*spg_O*550) //[hp]
