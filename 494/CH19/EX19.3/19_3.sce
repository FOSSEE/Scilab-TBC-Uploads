//All the quantities are expressed in SI units

Me = 2.94;                          //mach number of the flow over the upper plate
ue = 1000;
Te = 288;                           //temperature of the upper plate
ue = 1000;                          //velocity of the upper plate
S = 40;                             //plate planform area
Pr = 0.71;                          //Prandlt number of air at standard condition
gam = 1.4;                          //ratio of specific heats

//the recovery factor is given as
r = Pr^(1/3);

//for M = 2.94
T_aw = Te*(1+r*(2.74-1));
T_w = T_aw;                          //since the flat plate has an adiabatic wall

//from the Meador-Smart equation
T_star = Te*(0.5*(1+T_w/Te) + 0.16*r*(gam-1)/2*Me^2);

//from the equation of state
rho_star = p_star/R/T_star;

//from eq.(15.3)
mue_star = mue0*(T_star/T0)^1.5*(T0+110)/(T_star+110);

//thus
Re_c_star = rho_star*ue*c/mue_star;

//from eq.(18.22)
Cf_star = 0.02667/Re_c_star^0.139;

//hence, the frictional drag on one surface of the plate is
D_f = 1/2*rho_star*ue^2*S*Cf_star;

//thus, the total frictional drag is given by
D = 2*D_f;

printf("\nRESULTS\n---------\nThe total frictional drag is:\n        D = %5.0f N\n",D)