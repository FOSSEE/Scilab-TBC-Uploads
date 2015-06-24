clear;
clc;
V_p=230*sqrt(2);
R=1+((1)^-1+(10)^-1)^-1;
A=V_p/R;
s=1;    //s
t_c=20*A^-2*s;    printf("fault clearance time=%.4f ms",t_c*10^3);