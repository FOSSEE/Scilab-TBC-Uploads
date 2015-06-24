//All the quantities are expressed in SI units

R = 287;
gam = 1.4;
V_inf = 250;

//(a)
//At sea level
T_inf = 288;

//the velocity of sound is given by
a_inf = sqrt(gam*R*T_inf);

//thus the mach number can be calculated as
M_inf = V_inf/a_inf;

printf("\n(a)\nThe Mach number at sea level is:\n        M_inf = %1.3f\n",M_inf)

//similarly for (b) and (c)
//(b)
//at 5km
T_inf = 255.7;

a_inf = sqrt(gam*R*T_inf);

M_inf = V_inf/a_inf;

printf("\n(b)\nThe Mach number at 5 km is:\n        M_inf = %1.2f\n",M_inf)

//(c)
//at 10km
T_inf = 223.3;

a_inf = sqrt(gam*R*T_inf);

M_inf = V_inf/a_inf;

printf("\n(c)\nThe Mach number at 10 km is:\n        M_inf = %1.3f\n",M_inf)