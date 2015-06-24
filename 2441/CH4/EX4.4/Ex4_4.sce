//Exa 4.4
clc;clear;close;
format('v',6);
P=2;//MVA
V=6000;//V
speed=750;//rpm//speed
ns=speed/60;//rps
Zs=6;//ohm/phase
f=50;//Hz
pf=0.8;//Power factor Lagging
//Calculation
I=P*10^6/sqrt(3)/V;//A//Current
theta=acosd(pf);//degree
E=V/sqrt(3)+I*(cosd(theta)-%i*sind(theta))*%i*Zs;//V
Ps=V*sqrt(3)*E/Zs/1000;//kw per elect. radian
Ps=Ps*4*%pi/180;//kW per mech. degree
Ps=abs(Ps);//kW per mech. degree
disp(Ps,"Synchronising power per mech. degree(kW)");
Ts=abs(Ps)*1000/2/%pi/ns;//N-m
disp(Ts,"Synchronising torque(N-m)");
//Answer in the textbook is not accurate.
