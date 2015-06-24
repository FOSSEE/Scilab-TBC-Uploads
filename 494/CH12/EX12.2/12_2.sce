//All the quantities are expressed in SI units

M_inf = 2;                       //freestream mach number
rho_inf = 0.3648;                //freestream density at 11 km altitude
T_inf = 216.78;                  //freestream temperature at 11 km altitude
gam = 1.4;                       //ratio of specific heats
R = 287;                         //specific gas constant
m = 9400;                        //mass of the aircraft
g = 9.8;                         //acceleratio due to gravity
W = m*g;                         //weight of the aircraft
S = 18.21;                       //wing planform area

//thus
a_inf = sqrt(gam*R*T_inf);
V_inf = M_inf*a_inf;
q_inf = 1/2*rho_inf*V_inf^2;

//thus the aircraft lift coefficient is given as
C_l = W/q_inf/S;

alpha = 180/%pi*C_l/4*sqrt(M_inf^2 - 1);

printf("\nRESULTS\n---------\nThe angle of attack of the wing is:\n        alpha = %1.2f degrees\n",alpha)