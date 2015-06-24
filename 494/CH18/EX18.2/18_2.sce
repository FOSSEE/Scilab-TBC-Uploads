//All the quantities are expressed in SI units

Pr = 0.71;                    //Prandlt number of air at standard conditions
Pr_star = Pr;
Te = 288;                     //temperature of the upper plate
ue = 1000;                    //velocity of the upper plate
Me = 2.94;                    //Mach number of flow on the upper plate
p_star = 101000;
R = 287;                      //specific gas constant
T0 = 288;                     //reference temperature at sea level
mue0 = 1.7894e-5;             //reference viscosity at sea level
c = 2;                        //chord length of the plate
S = 40;                       //plate planform area

//recovery factor for a boundary layer is given by eq.(18.47) as
r = sqrt(Pr);

//rearranging eq.(16.49), we get for M = 2.94
T_aw = Te*(1+r*(2.74-1));

//from eq.(18.53)
T_star = Te*(1 + 0.032*Me^2 + 0.58*(T_aw/Te-1));

//from the equation of state
rho_star = p_star/R/T_star;

//from eq.(15.3)
mue_star = mue0*(T_star/T0)^1.5*(T0+110)/(T_star+110);

//thus
Re_c_star = rho_star*ue*c/mue_star;

//from eq.(18.22)
Cf_star = 1.328/sqrt(Re_c_star);

//hence, the frictional drag on one surface of the plate is
D_f = 1/2*rho_star*ue^2*S*Cf_star;

//thus, the total frictional drag is given by
D = 2*D_f;

printf("\nRESULTS\n---------\nThe total frictional drag is:\n        D = %4.0f N\n",D)