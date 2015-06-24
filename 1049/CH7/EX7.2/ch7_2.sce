clear;
clc;
a=.4;    //duty cycle,a=T_on/T
V_s=230;
R=10;
V=a*(V_s-2);    printf("avg o/p voltage=%.1f V",V);
V_or=sqrt(a*(V_s-2)^2);    printf("\nrms value of o/p voltage=%.1f V",V_or);
P_o=V_or^2/R;
P_i=V_s*V/R;
n=P_o*100/P_i;    printf("\nchopper efficiency in percentage=%.2f",n);