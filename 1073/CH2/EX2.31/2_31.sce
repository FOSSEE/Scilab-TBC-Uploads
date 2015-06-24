
clear;
clc;
//Example 2.31
//Calculate:(a) Heat loss per unit length  
//(b)Reduction in heat loss
//Given
hi=10    //W/sq m.K
h0=hi    //W/sq.m.K
r1=0.09    //m
r2=0.12    //m
t=0.05    //thickness of insulation [m]
k1=40    //W/m.K
k2=0.05    //W/m.K
T1=473    //K
T2=373    //K
Q_by_L=2*%pi*(T1-T2)/(1/(r1*hi)+log(r2/r1)/k1+1/(r2*h0));    //W/m
printf("Ans (a) Heat loss=%f W/m ",Q_by_L)
//After addition of insulation:
r3=r2+t;    //radius of outer surface of insulaiton
Q_by_L1=2*%pi*(T1-T2)/(1/(r1*hi)+log(r2/r2)/k1+log(r3/r2)/k2+1/(r3*h0));    // W
Red=Q_by_L-Q_by_L1    //Reduciton in heat loss in [W/m]
percent_red=(Red/Q_by_L)*100    //% Reduction in heat loss
printf("Ans (b) Percent reduction in heat loss is %f percent",percent_red)
