clear;
clc;
V_s=200;
C=20*10^-6;
L=.2*10^-3;
i_c=10;
i=V_s*sqrt(C/L);
w_o=1/sqrt(L*C);
t_1=(1/w_o)*asin(i_c/i);    printf("reqd time=%.0f us",t_1*10^6);

t_o=%pi/w_o;
t_c=t_o-2*t_1;    printf("\nckt turn off time=%.1f us",t_c*10^6);
//solution in book wrong, as wrong values are selected while filling the formuleas