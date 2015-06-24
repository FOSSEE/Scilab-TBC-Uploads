//clear//
clear;
clc;

//Example 4.4
gc = 32.17; //[ft-lb/lbf-s^2]
rho_w = 62.37;//[lb/ft^3], density of water
sp_gravity = 1.84;
neta = 0.60;
hf  = 10; //[ft-lbf/lb], friction losses
Va_bar = 3; //[ft/s]
Da = 3; //[in.]
Db = 2; //[in.]
//From Appendix corss secional area respective to 3in. and 2in. diameter
Sa = 0.0513; //[ft^2]
Sb = 0.0233; //[ft^2]
Za = 0 ;//[ft]
Zb = 50 ;//[ft]
Vb_bar = Va_bar*(Sa/Sb); //[ft/s]
g =gc
//Using Eq.(4.32)
Wp = ((Zb*g/gc)+Vb_bar^2/(2*gc)+hf)/neta;//[ft-lbf/lb]

//Using Eq.(4.32) on pump itself
//station a is the suction connection and station b is the discharge
//Za = Zb
//Eq.(4.32) becomes
//the pressure developed by pume is deltaP = pb-pa
deltaP = sp_gravity*rho_w*(((Va_bar^2-Vb_bar^2)/(2*gc))+neta*Wp) //[lbf/ft^3]

mdot = Sa*Va_bar*sp_gravity*rho_w;

//the Power
P  = mdot*Wp/550  //[hp]
