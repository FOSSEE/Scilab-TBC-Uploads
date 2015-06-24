//All the quantities are expressed in SI units

b = 35*%pi/180;                    //oblique shock wave angle
pressure_ratio = 3;                //upstream and downstream pressure ratio

//from appendix B
Mn_1 = 1.64;
M1 = Mn_1/sin(b);

printf("\nRESULTS\n---------\nThe upstream mach number is:\n        M = %1.2f\n",M1)