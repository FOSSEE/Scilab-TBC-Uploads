//Find the torque exerted on the crankshaft
clc
//given
D=9//in
stroke=24//in
d=2//in
l=60//in
CP=l
N=120
theta=40//degrees
x=theta*%pi/180
P1=160//lb/in^2
P2=32//lb/in^2
OC=stroke/2
F=%pi*(D/2)^2*P1-%pi*(D/2)^2*P2+%pi*(d/2)^2*P2
//Ft*Vc=F*Vp; Where Vc and Vp are velocities of crank and pin respectively
//Vp/Vc=IP/IC=OM/OC - From similar triangles  ; fig 274
n=CP/OC
OM=OC*(sin(x) + (sin(2*x)/(2*n)))//from 3.11
T=F*OM/12//torque exerted on crankshaft
Torque=floor(T)
printf("The torque exerted on crankshaft= F*OM = %.f lb ft",Torque)
