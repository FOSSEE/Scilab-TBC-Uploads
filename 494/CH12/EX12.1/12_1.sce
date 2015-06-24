//All the quantities are expressed in SI units

alpha = 5*%pi/180;                    //angle of attack
M_inf = 3;                            //freestream mach number

//from eq.(12.23)
c_l = 4*alpha/sqrt(M_inf^2 - 1);

//from eq.(12.24)
c_d = 4*alpha^2/sqrt(M_inf^2 - 1);

printf("\nRESULTS\n---------\nThe cl and cd according to the linearized theory are:\n        cl = %1.3f\n        cd = %1.3f\n",c_l,c_d)