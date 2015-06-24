//all the quantities are expressed in SI units

a0 = 0.1*180/%pi;                    //airfoil lift curve slope
AR = 7.96;                   //Wing aspect ratio
alpha_L0 = -2*%pi/180;               //zero lift angle of attack
tow = 0.04;                  //lift efficiency factor
C_l = 0.21;                  //lift coefficient of the wing

//the lift curve slope of the wing is given by
a = a0/(1+(a0/%pi/AR/(1+tow)));

//thus angle of attack can be calculated as
alpha = C_l/a + alpha_L0;

printf("\nRESULTS\n--------\n        alpha = %1.1f degrees\n",alpha*180/%pi)