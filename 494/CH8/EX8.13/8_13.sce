//All the quantities are expressed in SI units

p1 = 4.66e4;                                //ambient pressure
M = 8;                                      //mach number

//from Appendix B, for M = 8
p0_2 = 82.87*p1;                            //total pressure downstream of the shock

//since the flow is isentropic downstream of the shock, total pressure is conserved
ps_atm = p0_2/101300;                       //pressure at the stagnation point

printf("\nRESULTS\n---------\nThe pressure at the nose is:\n        p_s = %2.1f atm\n",ps_atm)