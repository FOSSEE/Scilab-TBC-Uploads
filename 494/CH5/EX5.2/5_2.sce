//All the quantities are expressed in SI units

CDi1 = 0.01;                        //induced drag coefficient for first wing
delta = 0.055;                      //induced drag factor for both wings
tow = delta;
alpha_L0 = -2*%pi/180;              //zero lift angle of attack
alpha = 3.4*%pi/180;                //angle of attack
AR1 = 6;                            //Aspect ratio of the first wing
AR2 = 10;                           //Aspect ratio of the second wing

//from eq.(5.61), lift coefficient can be calculated as
C_l1 = sqrt(%pi*AR1*CDi1/(1+delta));

//the lift slope for the first wing can be calculated as
a1 = C_l1/(alpha-alpha_L0);

//the airfoil lift coefficient can be given as
a0 = a1/(1-(a1/%pi/AR1*(1+tow)));

//thus the list coefficient for the second wing which has the same airfoil is given by
a2 = a0/(1+(a0/%pi/AR2*(1+tow)));
C_l2 = a2*(alpha-alpha_L0);
CDi2 = C_l2^2/%pi/AR2*(1+delta);

printf("\nRESULTS\n--------\nThe induced drag coefficient of the second wing is\n        CD,i = %1.4f",CDi2)