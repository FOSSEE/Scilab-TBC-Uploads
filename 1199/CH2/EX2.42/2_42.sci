// 2.42
clc;
L_air=(3.1-3)/2;
D_stress=100/L_air;
e0=8.85*10^-12;
l=20*10^-3;
D2=3.1;
D1=3;
C=(2*%pi)*e0*l*10^12/(log(D2/D1));
printf("Capacitance=%.1f pF",C)
l=(20*10^-3)-(2*10^-3);
C_new=(2*%pi)*e0*l/(log(D2/D1));
C_change=C-C_new*10^12;
printf("\nchange in Capacitance=%.1f pF",C_change)
