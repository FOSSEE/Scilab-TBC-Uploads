clc
V1=0.15; //m^3
p1=15; //bar
T1=550; //K
T2=T1;
r=4; //r=V2/V1
V2=r*V1;
T3=290; //K
p2=p1*V1/V2;
W_12=p1*V1*log(V2/V1)*10^2; //kJ
V3=V2;
p3=p2*T3/T2;
W_23=0;
n=log(p1/p3)/log(V3/V1);
W_31=(p3*V3-p1*V1)/(n-1)*10^2; //kJ

disp("net work done = ")
Wnet=W_12+W_23+W_31
disp("kJ")

Qnet=Wnet;
disp("Heat transferred during the cycle = ")
disp(Qnet)
disp("kJ")