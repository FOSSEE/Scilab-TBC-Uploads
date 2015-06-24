//Ex:5.7
clc;
clear;
close;
//Given:
Ri=450;//in ohms
B=80;
b1=60;
b2=100;
R2=20000;//inthe question it is given 2Kohm but 20Kohm is used
C2=500*10^-12;
Ceq=B*R2*C2/(Ri+R2);
lv=b1*R2*C2/(Ri+R2);
hv=b2*R2*C2/(Ri+R2);
printf("\n\t value of capacitance = %f nF",Ceq*10^9);
printf("\n lower value of capacitance = %f nF",lv*10^9);
printf("\n higher value of capacitance = %f nF",hv*10^9);
