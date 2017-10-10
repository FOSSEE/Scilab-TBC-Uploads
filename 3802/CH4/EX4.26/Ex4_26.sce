//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_26.sce.

clc;
clear;
d_i=5e-3;             //Diameter of inner cylinder in metre
d_o=15e-3;            //Diameter of outer cylinder in metre
epsilon_r=4;
V=500;
epsilon_not=8.854e-12;
epsilon=epsilon_r*epsilon_not;
a=d_i/2;
b=d_o/2;
C=(2*%pi*epsilon)/(log(b/a));
printf("\n Capacitance of the cable=%3.2f pF/m \n",C*1e12)

printf("\n(a)")
p_l=C*V;                //Electric displacement through a cylindrical area of unit length in C/m
D=p_l/(2*%pi*a);
E=D/epsilon;
printf("\n  The electric flux density at the surface of inner conductor=%1.3f micro_C/m^2",D*1e6)
printf("\n  The electric field intensity at the surface of inner conductor=%3.0f kV/m \n",E*1e-3)

printf("\n(b)")
D=p_l/(2*%pi*b);
E=D/epsilon;
printf("\n  The electric flux density at the inner surface of outer conductor=%1.3f micro_C/m^2",D*1e6)
printf("\n  The electric field intensity at the inner surface of outer conductor=%2.3f kV/m \n",E*1e-3)
//Answer vary dueto round off error
