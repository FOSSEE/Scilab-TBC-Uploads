//clear//
clear;
clc;

//Example 7.1
// Given 
rho_p = 2800; // [kg/m^3]
g = 9.80665; //[m/s^2]
ac = 50*g; // [m/s^2]
//(a)
//From appendix 20
Dp_100 = 0.147; //[mm]
Dp_80  = 0.175; //[mm]
Dp  = (Dp_100+Dp_80)/2;//[mm]

//From Appendix 14
mu = 0.801; //[cP]
rho = 995.7; //[kg/m^2]
// Using Eq.(7.45)
K = Dp*10^-3*(g*rho*(rho_p-rho)/(mu*10^-3)^2)^(1/3);
//This is slightly above the Stoke's-law range
//Assuming
N_rep = 4.4;
//From Fig. 7.6
Cd = 7.9;
//From Eq.(7.37)
mu_ta = sqrt(4*g*(rho_p-rho)*Dp*10^-3/(3*Cd*rho)) // [m/s]

// (b)
//Using 'ac' in place of 'g' in Eq.(7.45)
K = K*50^(1/3);  // Since only acceleration changes
//Etimating
N_rep = 80; //From Fig. (7.6)
Cd = 1.2;
mu_tb1 = sqrt(4*ac*(rho_p-rho)*Dp*10^-3/(3*Cd*rho)) // [m/s]
// For irregular particles Cd is about 20 percent greater 
//than that for spheres 
Cd = 1.2*1.2;
mu_tb2 = sqrt(4*ac*(rho_p-rho)*Dp*10^-3/(3*Cd*rho)) // [m/s]
