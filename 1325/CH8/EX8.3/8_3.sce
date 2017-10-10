//To find a) magnitude of P b) magnitude of force at Hd
clc
//given
u=.35
Tb=500//lb.ft
rd=10//in
phi=atan(u)
x=rd*sin(phi)
//F*OD=R*a=R1*a
//R=R1
//2*R*x=Tb
OD=24//in
a=11.5//inches; From figure
F=Tb*a*12/(OD*2*x)
//from figure
HG=4//in
GK=12//in
HL=12.22//in
P=F*HG/GK
Fhd=HL*P/HG
printf("\na) Magnitude of P = %.f lb",P)
printf("\nb) Magnitude of Fhd = %.f lb",Fhd)
