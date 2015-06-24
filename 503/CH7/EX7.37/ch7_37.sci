//to determine the power delivered to the fan,torque developed by the motor and calculate external resistance to be added to armature ckt

clc;
V=220;
Ra=.6;
Rse=.4;
Ia=30;
Ea=V-(Ra+Rse)*Ia;
P=Ea*Ia;    disp(P,'Power(W)');
n=400;
w=2*%pi*n/60;
T=P/w;    disp(T,'torque(Nm)');

nn=200;
T1=T*(nn/n)^2;
Iaa=Ia*nn/n;
w1=2*%pi*nn/60;
P1=T1*w1;disp(P1,'power developed when n=200 rpm((W))');
Ea1=P1/Iaa;
Rext=(V-Ea1)/Iaa-(Ra+Rse);disp(Rext,'external resistance(ohm)');