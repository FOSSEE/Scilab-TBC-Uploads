//All the quantities are expressed in SI units

M1 = 3.5;
theta1 = 10*%pi/180;
gam = 1.4;
p1 = 101300;
T1 = 288;

//for these values of M and theta, from fig. 9.9
b1 = 24*%pi/180;
Mn_1 = M1*sin(b);

//from Appendix B, for Mn,1 = 2.05, we have
Mn_2 = 0.7157;
p_ratio1 = 2.32;
T_ratio1 = 1.294;
M2 = Mn_2/sin(b1-theta1);

//now
theta2 = 10*%pi/180;

//from fig. 9.9
b2 = 27.3*%pi/180;
phi = b2 - theta2;

//from Appendix B
p_ratio2 = 1.991;
T_ratio2 = 1.229;
Mn_3 = 0.7572;
M3 = Mn_3/sin(b2-theta2);

//thus
p3 = p_ratio1*p_ratio2*p1;
T3 = T_ratio1*T_ratio2*T1;

printf("\nRESULTS\n---------\n        p3 = %1.2f x 10^5 N/m2\n        T3 = %3.0f K\n",p3/1e5,T3)