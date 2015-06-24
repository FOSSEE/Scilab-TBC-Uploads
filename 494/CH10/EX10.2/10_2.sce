//All the quantities are expressed in Si units

area_ratio = 2;                            //exit to throat area ratio
p0 = 1;                                    //reservoir pressure in atm
T0 = 288;                                  //reservoir temperature

//(a)
//since M = 1 at the throat
Mt = 1;
pt = 0.528*p0;                             //pressure at throat
Tt = 0.833*T0;                             //temperature at throat

//from appendix A for supersonic flow, for an area ratio of 2
Me = 2.2;                                  //exit mach number
pe = 1/10.69*p0;                           //exit pressure
Te = 1/1.968*T0;                           //exit temperature

printf("\nRESULTS\n---------\nAt throat:\n        Mt = %1.1f\n        pt = %1.3f atm\n        Tt = %3.0f K\n\nFor supersonic exit:\n        Me = %1.1f\n        pe = %1.4f atm\n        Te = %3.0f K\n",Mt,pt,Tt,Me,pe,Te)

//(b)
//from appendix A for subonic flow, for an area ratio of 2
Me = 0.3;                                  //exit mach number
pe = 1/1.064*p0;                           //exit pressure
Te = 1/1.018*T0;                           //exit temperature

printf("\nFor subrsonic exit:\n        Me = %1.1f\n        pe = %1.2f atm\n        Te = %3.1f K",Me,pe,Te)