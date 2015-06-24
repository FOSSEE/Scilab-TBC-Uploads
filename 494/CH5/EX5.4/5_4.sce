//All the qunatities are expressed in SI units

alpha_L0 = -1*%pi/180;                 //zero lift angle of attack
alpha1 = 7*%pi/180;                    //reference angle of attack
C_l1 = 0.9;                            //wing lift coefficient at alpha1
alpha2 = 4*%pi/180;
AR = 7.61;                             //aspect ratio of the wing
taper = 0.45;                          //taper ratio of the wing
delta = 0.01;                          //delta as calculated from fig. 5.20
tow = delta;

//the lift curve slope of the wing/airfoil can be calculated as
a0 = C_l1/(alpha1-alpha_L0);

e = 1/(1+delta);

//from eq. (5.70)
a = a0/(1+(a0/%pi/AR/(1+tow)));

//lift coefficient at alpha2 is given as
C_l2 = a*(alpha2 - alpha_L0);

//from eq.(5.42), the induced angle of attack can be calculated as
alpha_i = C_l2/%pi/AR;

//which gives the effective angle of attack as
alpha_eff = alpha2 - alpha_i;

//Thus the airfoil lift coefficient is given as
c_l = a0*(alpha_eff-alpha_L0);

c_d = 0.0065;                         //section drag coefficient for calculated c_l as seen from fig. 5.2b

//Thus the wing drag coefficient can be calculated as
C_D = c_d + ((C_l2^2)/%pi/e/AR);

printf("\nRESULTS\n--------\nThe drag coefficient of the wing is\n        C_D = %1.4f\n",C_D)