//Ex:2.25
clc;
clear;
close;
C1=2;//in nF
C2=4;//in nF
C3=2;
C4=4;
C_a=C1+C2;
C_b=C_a*C3/(C_a+C3);
C_eff=C4+C_b;
printf("Capacitance = %f nF",C_eff);