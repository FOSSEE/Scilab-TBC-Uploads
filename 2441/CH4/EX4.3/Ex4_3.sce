//Exa 4.3
clc;clear;close;
format('v',5);
P=5;//MVA
V=1000;//V
speed=1500;//rpm//speed
ns=speed/60;//rps
f=50;//Hz
pf=0.8;//Power factor Lagging
Xs=20;//%//synchronous reluctance
Xs=Xs/100;///p.u.
disp("Part(a)");
V=1;//p.u.//on no load
E=1;//p.u.//on no load
Ps=V*E/Xs;//p.u.
Ps=Ps*P;//MW per elect. radian
Ps=Ps*1000;//kW per elect. radian
//1 mech. radian=%pi/90 elect. radian
Ps=Ps*%pi/90;//kW per mech. degree
disp(Ps,"Synchronising power per mech. degree(kW)");
d=0.5;//degree////displacement
Ts=Ps*1000*d/2/%pi/ns;//N-m
format('v',6);
disp(Ts,"Synchronising torque(N-m)");
disp("Part(b)");
theta=acosd(pf);//degree
E=V+(cosd(theta)-%i*sind(theta))*%i*Xs;//p.u.
Ps=V*E/Xs;//p.u.
Ps=Ps*P;//MW per elect. radian
Ps=Ps*1000;//kW per elect. radian
//1 mech. radian=%pi/90 elect. radian
Ps=Ps*%pi/90;//kW per mech. degree
Ps=abs(Ps);//kW per mech. degree
disp(Ps,"Synchronising power per mech. degree(kW)");
d=0.5;//degree////displacement
Ts=abs(Ps)*1000*d/2/%pi/ns;//N-m
disp(Ts,"Synchronising torque(N-m)");
//Answer in the textbook is not accurate.
