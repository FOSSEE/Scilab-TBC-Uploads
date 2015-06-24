//All the quantities are expressed in SI units

M1 = 10;                        //upstream mach number
theta = 15*%pi/180;              //deflection angle
p1 = 1;                          //ambient pressure in atm

//from fig 9.9, for M1 = 10 and theta = 15 we have
b = 20*%pi/180;
Mn_1 = M1*sin(b);

//from Appendix B, for Mn,1 = 3.42
Mn_2 = 0.4552;
M2 = Mn_2/sin(b-theta);
p2 = 13.32*p1;

//from Appendix A, for M1 = 10
p0_2 = 0.2322*42440*p1;

printf("\nRESULTS\n---------\n        M2 = %1.2f\n        p2 = %2.2f atm\n        p0,2 = %1.2f x 10^3 atm\n",M2,p2,p0_2/1e3)