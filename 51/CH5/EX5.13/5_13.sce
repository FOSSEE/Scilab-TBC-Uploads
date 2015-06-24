clc;
clear;
p1=100;//psia
p2=18.4;//psia
T1=540;//degree R
T2=453;//degree R
V2=1000;//ft/s
V1=219;//ft/s
dia=4;//in

//m=m1=m2
A2=%pi*((4/12)^2)/4;//ft^2
//equation of state d*R*T=p
d2=p2*144/(1716*T2);
m=A2*d2*V2;//slugs/s
Rx=A2*144*(p1-p2)-(m*(V2-V1));//lb
disp("lb",Rx,"Frictional force exerted by pipe wall on air flow=")