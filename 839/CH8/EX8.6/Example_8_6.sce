//clear//
clear;
clc;

//Example 8.4
//Given
Cpt = 0.98;
Ta = 200; //[F]
Da = 36; //[in.]
pa = 15.25; //[in.]
h = 0.54; //[in.]
P = 29.92; //[in.]
spg_m =13.6; //[specific gravity of mercury]
rho_w = 62.37; //[lb/ft^3]
gc = 32.174; //[ft-lb/lbf-s^2]
//Using Eq.(8.52)
Pabs = P+pa/spg_m; //[in.]
rho = 29*492*31.04/(359*(200+460)*29.92); //[lb/ft^3]
//From manometer reading
delta_p = h/12*rho_w //[lbf/ft^3]

//Using Eq.(8.53, m*aximum velocity, assuming Nma is negligible
umax = Cpt*sqrt(2*gc*delta_p/rho) // [ft/s]
//The reynolds number based on maximum velocity
mu_air = 0.022 ; //[cP] form Appendix 8
Nre_max = (Da/12)*umax*rho/(mu_air*0.000672);
//Using Fig 5.7, to obtain average velocity
Vbar = 0.86*umax // [ft/s]
Nre = Nre_max*0.86;
//The volumetric flow rate
q = Vbar*(Da/12)^2*%pi/4*520/660*Pabs/P*60 //[ft^3/min]
