//All the quantities are expressed in SI units

u1 = 680;                            //velocity upstream of shock
T1 = 288;                            //temperature upstream of shock
p1 = 1;                              //pressure upstream of shock
gam = 1.4;                           //ratio of specific heats
R = 287;                             //universal gas constant

//the speed of sound is given by
a1 = sqrt(gam*R*T1)

//thus the mach number is
M1 = 2;

//from Appendix B, for M = 2, the relations between pressure and temperature are given by
pressure_ratio = 4.5;                //ratio of pressure accross shock
temperature_ratio = 1.687;           //ratio of temperature accross shock
M2 = 0.5774;                         //mach number downstream of shock

//thus the values downstream of the shock can be calculated as
p2 = pressure_ratio*p1;
T2 = temperature_ratio*T1;
a2 = sqrt(gam*R*T2);
u2 = M2*a2;

printf("\nRESULTS\n---------\n        p2 = %1.1f atm\n        T2 = %3.0f K\n        u2 = %3.0f m/s",p2,T2,u2)