//All the quantities are expressed in SI units

b = 30*%pi/180;                        //oblique shock wave angle
M1 = 2.4;                              //upstream mach number

//from figure 9.9, for these value of M and beta, we have
theta = 6.5*%pi/180;

Mn_1 = M1*sin(b);                      //upstream mach number normal to shock

//from Appendix B
pressure_ratio = 1.513;
temperature_ratio = 1.128;
Mn_2 = 0.8422;

M2 = Mn_2/sin(b-theta);

printf("\nRESULTS\n---------\n        theta = %1.1f degrees\n        p2/p1 = %1.3f\n        T2/T1 = %1.3f\n        M2 = %1.2f\n",theta*180/%pi,pressure_ratio,temperature_ratio,M2)