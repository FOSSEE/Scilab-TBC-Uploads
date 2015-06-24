//All the quantities are expressed in SI units

p_inf = 1;
p1 = 0.7545;
M_inf = 0.6;
gam = 1.4;

//from eq. (8.42)
p0_inf = p_inf*((1+((gam-1)/2*M_inf*M_inf))^(gam/(gam-1)));

p0_1 = p0_inf;

//from eq. (8.42)
ratio = p0_1/p1;

//from appendix A, for this ratio, the Mach number is
M1 = 0.9;

printf("\nRESULTS\n---------\nThe mach number at the given point is:\n        M1 = %1.1f\n",M1)