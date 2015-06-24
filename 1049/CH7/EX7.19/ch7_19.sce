clear;
clc;
t=100*10^-6;
R=10;
//V_s*(1-2*exp(-t/(R*C)))=0
C=-t/(R*log(1/2));    printf("Value of comutating component C=%.3f uF",C*10^6);
disp("max permissible current through SCR is 2.5 times load current");
L=(4/9)*C*R^2;    printf("value of comutating component L=%.1f uH",L*10^6);
disp("max permissible current through SCR is 1.5 times peak diode current");
L=(1/4)*C*R^2;    printf("value of comutating component L=%.2f uH",L*10^6);