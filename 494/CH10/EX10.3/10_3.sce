//All the quantities are expressed in Si units

area_ratio = 2;                            //exit to throat area ratio
p0 = 1;                                    //reservoir pressure in atm
T0 = 288;                                  //reservoir temperature
pe = 0.973;                                //exit pressure in atm

p_ratio = p0/pe;                           //ratio of reservoir to exit pressure

//from appendix A for subsonic flow, for an pressure ratio of 1.028
Me = 0.2;                                  //exit mach number
area_ratio_exit_to_star = 2.964;           //A_exit/A_star

//thus
area_ratio_throat_to_star = area_ratio_exit_to_star/area_ratio;           //A_exit/A_star

//from appendix A for subsonic flow, for an area ratio of 1.482
Mt = 0.44;                                 //throat mach number

printf("\nRESULTS\n---------\n        Me = %1.1f\n        Mt = %1.2f\n",Me,Mt)