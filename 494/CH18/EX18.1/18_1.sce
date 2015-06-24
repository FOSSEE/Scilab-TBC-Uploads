//All the quantities are expressed in SI units

p_inf = 101000;                    //freestream pressure
T_inf = 288;                       //freestream temperature
c = 2;                             //chord length of the plate
S = 40;                            //planform area of the plate
mue_inf = 1.7894e-5;               //coefficient of viscosity at sea level
gam = 1.4;                         //ratio of specific heats
R = 287;                           //specific gas constant

//the freestream density is
rho_inf = p_inf/R/T_inf;

//the speed of sound is
a_inf = sqrt(gam*R*T_inf);

//(a)
V_inf = 100;

//thus the mach number can be calculated as
M_inf = V_inf/a_inf;

//the Reynolds number at the trailing is given as
Re_c = rho_inf*V_inf*c/mue_inf;

//from eq.(18.22)
Cf = 1.328/sqrt(Re_c);

//the friction drag on one surface of the plate is given by
D_f = 1/2*rho_inf*V_inf^2*S*Cf;

//the total drag generated due to both surfaces is
D = 2*D_f;

printf("\nRESULTS\n---------\nThe total frictional drag is:\n(a)\n        D = %3.1f N\n",D)

//(b)
V_inf = 1000;

//thus the mach number can be calculated as
M_inf = V_inf/a_inf;

//the Reynolds number at the trailing is given as
Re_c = rho_inf*V_inf*c/mue_inf;

//from eq.(18.22)
Cf = 1.2/sqrt(Re_c);

//the friction drag on one surface of the plate is given by
D_f = 1/2*rho_inf*V_inf^2*S*Cf;

//the total drag generated due to both surfaces is
D = 2*D_f;

printf("\n(b)\n        D = %4.0f N\n",D)