//All the quantities are expressed in SI units

M1 = 2;                               //mach number
p1 = 1;                                //ambient pressure
T1 = 288;                              //ambient temperature
theta = 20*%pi/180;                   //flow deflection

//from figure 9.9, for M = 2, theta = 20
b = 53.4*%pi/180;                     //beta
Mn_1 = M1*sin(b);                     //upstream mach number normal to shock

//for this value of Mn,1 = 1.60, from Appendix B we have
Mn_2 = 0.6684;                        //downstream mach number normal to shock
M2 = Mn_2/sin(b-theta);               //mach number downstream of shock
p2 = 2.82*p1;
T2 = 1.388*T1;

//for M = 2, from appendix A we have
p0_2 = 0.8952*7.824*p1;
T0_1 = 1.8*T1;
T0_2 = T0_1;

printf("\nRESULTS\n---------\n        M2 = %1.2f\n        p2 = %1.2f atm\n        T2 = %3.1f K\n        p0,2 = %1.2f atm\n        T0,2 = %3.1f K",M2,p2,T2,p0_2,T0_2)