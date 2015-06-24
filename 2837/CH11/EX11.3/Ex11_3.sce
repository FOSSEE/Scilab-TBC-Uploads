clc
clear
//Initialization of variables
v1=60 //ft/s
d1=10 //in
d2=15 //in
P=15 //psia
R=53.35
T=540 //R
g=32.17 //ft/s^2
v1=60 //ft/s
//calculations
v2=v1*d1^2 /d2^2
rho=P*144/(R*T)
dp=rho*(v2^2 -v1^2)/(2*g) /144
p2=P-dp
//results
printf("Final pressure = %.3f psia",p2)
