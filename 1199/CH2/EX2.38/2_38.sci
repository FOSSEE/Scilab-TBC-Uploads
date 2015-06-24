// 2.38
clc;
b=0.02;
t=0.004;
I=(1/12)*b*t^3;
F=25;
l=0.25;
E=200*10^9;
x=(F*l^3)/(3*E*I);
printf("deflection=%.2f m",x)
DpF=x/F;
Se=DpF*0.5*1000;
Re=(10/1000)*(2/10);
F_min=Re/Se;
F_max=10/Se;
printf("\nminimum force=%.2f N",F_min)
printf("\nmaximum force=%.2f N",F_max)

