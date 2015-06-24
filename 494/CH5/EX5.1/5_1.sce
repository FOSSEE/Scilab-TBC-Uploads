//All the quantities are expressed in SI units

AR = 8;                //Aspect ratio of the wing
alpha = 5*%pi/180;             //Angle of attack experienced by the wing
a0 = 2*%pi             //airfoil lift curve slope
alpha_L0 = 0;          //zero lift angle of attack is zero since airfoil is symmetric

//from fig. 5.20, for AR = 8 and taper ratio of 0.8
delta = 0.055;
tow = delta;           //given assumption

//thus the lift curve slope for wing is given by
a = a0/(1+(a0/%pi/AR/(1+tow)));

//thus C_l can be calculated as
C_l = a*alpha;

//from eq.(5.61)
C_Di = C_l^2/%pi/AR*(1+delta);

printf("\nRESULTS\n--------\n        Cl = %1.4f\n\n        CD,i = %1.5f",C_l,C_Di)