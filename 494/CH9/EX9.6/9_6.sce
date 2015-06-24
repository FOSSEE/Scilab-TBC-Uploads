//All the quantities are expressed in SI units

M1 = 5;
theta = 15*%pi/180;
gam = 1.4;

//for these values of M and theta, from fig. 9.9
b = 24.2*%pi/180;
Mn_1 = M1*sin(b);

//from Appendix B, for Mn,1 = 2.05, we have
p_ratio = 4.736;

//hence
c_d = 4*tan(theta)/gam/(M1^2)*(p_ratio-1);

printf("\nRESULTS\n---------\nThe drag coefficient is given by:\n        cd = %1.3f\n",c_d)