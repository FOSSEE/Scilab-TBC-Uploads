//All the quantities are expressed in SI units

M1 = 10;                        //upstream mach number
theta = 15*%pi/180;              //deflection angle
p1 = 1;                          //ambient pressure in atm

//from appendix C, for M1 = 10 we have
v1 = 102.3*%pi/180;

//in region 2
v2 = v1 - theta;

//for this value of v2, from appendix C
M2 = 6.4;

//from Appendix A for M1 = 10 and M2 = 6.4, we have
p2 = 1/(2355)*1*42440*p1;

printf("\nRESULTS\n---------\n        M2 = %1.1f\n        p2 = %2.2f atm\n",M2,p2)