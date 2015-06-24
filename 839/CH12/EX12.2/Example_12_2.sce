//clear//
clear;
clc;

//Example 12.2
//Given
Tb1 = 141; //[F]
Tb2 = 79; //[F]/
Tw1 = 65; //[F]
Tw2 = 75; //[F]
Vb_bar = 5; //[ft/s]
rho_b = 53.1; //[lb/ft^3]
mu_b = 1.16; //[lb/ft-h], Form Appendix 9
k_b = 0.089; //[Btu/ft-h-F], From Appendix 13
Cp_b = 0.435; //[Btu/lb-F], From Appendix 16
//Using Appndix 14
rho_w = 62.3; //[lb /ft^3]
mu_w = 2.34; //[lb/ft-h]
k_w = 0.346; //[Btu/ft-h-F]
Cp_w = 1; //[Btu/lb-F]


//Soultion
Tavg_b = (Tb1+Tb2)/2; //[F]
Tavg_w = (Tw1+Tw2)/2; //[F]
Dit = 0.745/12; //[ft] 
Dot = 0.875/12; //[ft]
//Using Appendix 5
//The inside diameter of the jacket
Dij = 1.610/12; //[ft]
//From Appendix 6, the inside sectional area of the copper tube (for a 7/8 in. BWG 16 tube)
S = 0.00303; //[ft^2] 
//Equivalent diameter of the annular jacket space 
De = 4*(%pi/4*(Dij^2-Dot^2)/(%pi*(Dij+Dot))); //[ft]
mb_dot = Vb_bar*rho_b*S; //[lb/s]
//The rate of heat flow 
q = mb_dot*Cp_b*(Tb1-Tb2); //[Btu/s]
//mass flow rate of water
mw_dot = q/(Cp_w*(Tw2-Tw1)); //[lb/s]
//Water velocity
Vw_bar = mw_dot/(%pi/4*(Dij^2-Dot^2)*rho_w); //[ft/s]
//Reynolds number for benzene and water
Nre_b = Dit*Vb_bar*rho_b*3600/mu_b;
Nre_w = De*Vw_bar*rho_w*3600/mu_w;
//Prandtl Number for benzene and water
Npr_b = Cp_b*mu_b/k_b;
Npr_w = Cp_w*mu_w/k_w;

//Preliminary estimates of the coefficients are obtained using Eq.(12.32), omitting the 
//correction for viscosity ratio:
//Benzene
hi = 0.023*Vb_bar*3600*rho_b*Cp_b/(Nre_b^0.2*Npr_b^(2/3)); //[Btu/ft^2-h-F]
//Water
ho = 0.023*Vw_bar*3600*rho_w*Cp_w/(Nre_w^0.2*Npr_w^(2/3)); //[Btu/ft^2-h-F]
//Using Eq.(12.39)
//Temperature drop over the benzene resistance
delta_Ti = (1/hi)/(1/hi+Dit/(Dot*ho))*(Tavg_b-Tavg_w); //[F]
Tw = Tavg_b - delta_Ti; //[F]

//The viscosities of the liquids at Tw
muw_b = 1.45; //[lb/ft-h]
muw_w = 2.42*0.852; //[lb/ft-h]
//Using Eq.(12.24), viscosity-correction factors phi are 
phi_b = (mu_b/muw_b)^0.14;
phi_w = (mu_w/muw_w)^0.14;
//The corrected coefficients are
hi = hi*phi_b; //[Btu/ft^2-h-F]
ho = ho*phi_w; //[Btu/ft^2-h-F]
//The temperature drop over the benzene resistance and the wall temperature 
delta_Ti = (1/hi)/(1/hi+Dit/(Dot*ho))*(Tavg_b-Tavg_w); //[F]
Tw = Tavg_b - delta_Ti //[F]
//This is so close to previously calculated wall temperature that a second approximation
//is unnecessary
//Using Eq.(11.29), neglecting the resistance of the tube wall
Uo = 1/(Dot/(Dit*hi)+1/ho); //[Btu/ft^2-h-F]
disp('The overall coefficient is');
disp('Btu/ft^2-h-F',Uo);
