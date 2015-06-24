//clear//
clear;
clc;

//Example 9.5
//Given
Dt = 6; //[ft]
H = 8; //[ft]
T = 70; //[F]
sp_gr = 3.18;
w_fr = 0.25;
Da = 2; //[ft]
h = 1.5; //[ft]
gc = 32.17; //[ft-lb/lbf-s^2]
// (a) 
//Using data of Buurman et al. in Fig.(9.19)
//change in nc
delta_nc = (104/200)^0.2*(2.18/1.59)^0.45*(33.3/11.1)^0.13;
//change in P
dalta_P = delta_nc^3;

//Using Fig. 9.19 
V = %pi/4*Dt^2*H*7.48 ; //[gal]
P = 3.3*V/1000 //[hp]

//(b)
//From Table 9.3, for a cour blade turbine,
KT = 1.27;
Np = KT;
//slurry density
rho_m = 1/((w_fr/sp_gr)+(1-w_fr))*62; // [lb/ft^3]
 
nc = (P*gc*550/(Np*rho_m*Da^5))^(1/3) // [r/s]
