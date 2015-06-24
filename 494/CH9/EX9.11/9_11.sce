//All the quantities are expressed in SI units

M1 = 3;                        //upstream mach number
theta = 5*%pi/180;             //deflection angle
alpha = theta;                 //angle of attack
gam = 1.4;

//from appendix C, for M1 = 3 we have
v1 = 49.76*%pi/180;

//from eq.(9.43)
v2 = v1 + theta;

//for this value of v2, from appendix C
M2 = 3.27;

//from Appendix A for M1 = 3 and M2 = 3.27, we have
p_ratio1 = 36.73/55;

//from fig. 9.9, for M1 = 3 and theta = 5
b = 23.1*%pi/180;
Mn_1 = M1*sin(b);

//from Appendix B
p_ratio2 = 1.458;

//thus
c_l = 2/gam/(M1^2)*(p_ratio2-p_ratio1)*cos(alpha);

c_d = 2/gam/(M1^2)*(p_ratio2-p_ratio1)*sin(alpha);

printf("\nRESULTS\n---------\nThe lift and drag coefficients are given by:\n        cl = %1.3f\n        cd = %1.3f\n",c_l,c_d)