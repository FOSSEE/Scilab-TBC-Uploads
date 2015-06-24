//All the quantities are expressed in SI units

T_inf = 288;                                        //freestream temperature
p_inf = 1;                                          //freestream pressure
p1 = 0.7545;                                        //pressure at point 1
M = 0.9;                                            //mach number at point 1
gam = 1.4;                                          //ratio of specific heats

//for isentropic flow, from eq. (7.32)
T1 = T_inf*((p1/p_inf)^((gam-1)/gam));

//the speed of sound at that point is thus
a1 = sqrt(gam*R*T1);

//thus, the velocity can be given as
V1 = M*a1;

printf("\nRESULTS\n---------\nThe velocity at the given point is:\n        V1 = %3.0f m/s\n",V1)