//All the quantities are expressed in SI units

M1 = 1.5;                        //upstream mach number
theta = 15*%pi/180;              //deflection angle
p1 = 1;                          //ambient pressure in atm
T1 = 288;                        //ambient temperature

//from appendix C, for M1 = 1.5 we have
v1 = 11.91*%pi/180;

//from eq.(9.43)
v2 = v1 + theta;

//for this value of v2, from appendix C
M2 = 2;

//from Appendix A for M1 = 1.5 and M2 = 2.0, we have
p2 = 1/7.824*1*3.671*p1;
T2 = 1/1.8*1*1.45*T1;
p0_1 = 3.671*p1;
p0_2 = p0_1;
T0_1 = 1.45*T1;
T0_2 = T0_1;

//from fig. 9.25, we have
fml = 41.81;                    //Angle of forward Mach line
rml = 30 - 15;                  //Angle of rear Mach line

printf("\nRESULTS\n---------\n        p2 = %1.3f atm\n        T2 = %3.0f K\n        p0,2 = %1.3f atm\n        T0,2 = %3.1f K\n        Angle of forward Mach line = %2.2f degrees\n        Angle of rear Mach line = %2.0f degrees",p2,T2,p0_2,T0_2,fml,rml)