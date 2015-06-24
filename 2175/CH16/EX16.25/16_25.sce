clc;
eta=0.8;
F1_2=5.67*10^-8;
T1=533;//K
T2=293;//K
alpha=eta*F1_2*(T1^2+T2^2)*(T1+T2);

A=%pi*0.6*0.9;
Q1=alpha*A*(T1-T2);

alpha=8.8;
A=5;
Q2=alpha*A*(T1-T2);

Q=Q1+Q2;
disp("total heat loss is:");
disp("kW",Q/1000)
