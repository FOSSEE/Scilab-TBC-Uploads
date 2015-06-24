//EX:5.8
clc;
clear;
close;
//Given:
R=90*10^3;//in Kohms
C=100*10^-12;//in pF
g1=2800*10^-6;
g2=4300*10^-6;
lv=g1*R*C;
hv=g2*R*C;
printf("\n lower value of capacitance = %f nf",lv*10^9);
printf("\n higher value of capacitance = %f nF",hv*10^9);
