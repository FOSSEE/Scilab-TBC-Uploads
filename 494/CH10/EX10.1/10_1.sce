//All the quantities are expressed in Si units

area_ratio = 10.25;                        //exit to throat area ratio
p0 = 5;                                    //reservoir pressure in atm
T0 = 333.3;                                //reservoir temperature

//from appendix A, for an area ratio of 10.25
Me = 3.95;                                 //exit mach number
pe = 0.007*p0;                             //exit pressure
Te = 0.2427*T0;                            //exit temperature

printf("\nRESULTS\n---------\n        Me = %1.2f\n        pe = %1.3f atm\n        Te = %2.1f K",Me,pe,Te)