clear;
clc;
V_d=90;
V_i=220;
V_o=110'
X=25;
U=20;
M=cosd(X)+cosd(X+U);
E_ln=(2*%pi*V_d)/(3*sqrt(2)*M);
printf("the effective voltage will be = %.3f kV",E_ln);
D_s=E_ln/V_o;
printf("\ndesired tap setting of transformer = %.3f",D_s);
