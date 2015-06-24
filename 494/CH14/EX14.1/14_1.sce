//All the quantities are expressed in SI units

M1 = 8;                    //mach number
alpha = 15*%pi/180;        //anlge of attack
theta= alpha;
gam = 1.4;

//(a)
//for M = 8
v1 = 95.62*%pi/180;
v2 = v1 + theta;

//from Appendix C
M2 = 14.32;

//from Appendix A, for M1 = 8 and M2 = 14.32
p_ratio = 0.9763e4/0.4808e6;

//from eq.(11.22)
Cp2 = 2/gam/M1^2*(p_ratio - 1);

//for M1 = 8 and theta = 15
b = 21*%pi/180;
Mn_1 = M1*sin(b);

//for this value of Mn,1, from appendix B
p_ratio2 = 9.443;

//thus
Cp3 = 2/gam/M1^2*(p_ratio2 - 1);

c_n = Cp3 - Cp2;

c_l = c_n*cos(alpha);

c_d = c_n*sin(alpha);

L_by_D = c_l/c_d;

printf("\nRESULTS\n---------\n(a) The exact results from the shock-expansion theory are:\n        Cp2 = %1.4f\n        Cp3 = %1.4f\n        cl = %1.4f\n        cd = %1.4f\n        L/D = %1.2f\n",Cp2,Cp3,c_l,c_d,L_by_D)

//(b)
//from Newtonian theory, by eq.(14.9)
Cp3 = 2*sin(alpha)^2;
Cp2 = 0;
c_l = (Cp3 - Cp2)*cos(alpha);
c_d = (Cp3 - Cp2)*sin(alpha);
L_by_D = c_l/c_d;

printf("\n(b) The results from Newtonian theory are:\n        Cp2 = %1.4f\n        Cp3 = %1.4f\n        cl = %1.4f\n        cd = %1.4f\n        L/D = %1.2f\n",Cp2,Cp3,c_l,c_d,L_by_D)